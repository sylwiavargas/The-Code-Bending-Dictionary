Rails Authentication & Authorization
===

![](https://media.giphy.com/media/y0s36prnnGb5u/giphy.gif)

## SWBATs
- Understand, theoretically, how authentication and authorization work
  - Understand the _difference_ between authentication and authorization and how they fit under the umbrella topic _auth_
- Discuss different encryption and hashing schemes, and `bcrypt` specifically
  - Do we want to ever store plaintext user passwords? (no)
- Augment a user model in rails using `bcrypt`, `password_digest`, and `has_secure_password`
- Expose this information in a sample rails app
- Go over sessions, cookies, and implement sign up, log in, and log out

## Part I

### Discussion
- What's the difference between Authentication vs Authorization?
- Why don't we want to save a user's password in plaintext?
- What is hashing and how does it make password storage more secure?
   - "abc123" -> "bablidjilbjdij.dguherughioz.ngiajgilj"
   - "def321" -> "eiyjeisjyiljd/eghzdkuhgkhdxugh.egeihjlixhjild"

- What are rainbow tables and how can they defeat a password hashing strategy?
  - "password123" -> "bpjrahopirjkrsklr.bfjbslkfg.fsjakfs"
  - "password1" -> "ghdgiadlgijdf.dgadgdgz.dfasdf"
  - "abc123" -> "bablidjilbjdij.dguherughioz.ngiajgilj"

- What is salting? What is a salt? How can it defeat a rainbow tables attack?
  - "abc123" + "hgdfnj" -> "oihfshijdsljglid.dgdlisgjlds.dgjlda"
  - "abc123" + "bdsz" -> "gijildjzfdfsdf.gdaegr.22sdz"


### Implemention
0. Install the `bcrypt` gem
1. Add a column to the appropriate model called `password_digest`
  1.5. Don't forget to migrate
2. In the model, write the macro `has_secure_password`

What `has_secure_password` does:
1. Forces you to save your password with the `password` key so that it can be digested into a hash
2. Gives you instance method called `authenticate` that can check to see if the password provided matches the one it has saved


## Part II
- Sign Up, Login and Logout
- Locking down parts of our application
- Using information about our signed in user


### How does auth work in theory?

##### What is the difference between sign-in and sign up?

Sign-up happens once, and afterwards the information that is used to authenticate a user exists in the system for sign-in.

Sign-up corresponds to _creating_ a new user. Sign-in is authenticating an already existing user with some identifying piece of information.

##### What is authentication?

It boils down to a really interesting question: _Are you who you say you are?_ And we use the username/password as a proxy for that.

##### What is the difference between Authentication and Authorization?

Authorization happens after authentication. It's about scope, and specific information. _What is the user allowed to see/interact with?_; what is the user **authorized** to see.

##### How do passwords work?

Do websites save our passwords? And if they do, how are they stored? Should a plaintext password ever be stored?

##### What is the difference between hashing and encrypting?

What is encryption? What can be encrypted? Anything that can be encrypted, must also be able to be decrypted. In order to decrypt a cypher, you need to know the cypher used and any parameters (offset, perhaps) used to encrypt the information.

Hashing is a little different: the ultimate goal of one-way hashing is that you cannot "decrypt" the original text. In addition to any encryption scheme, each authenticated user has a "salt", added information that augments the password to make decryption even harder.

![](https://media.giphy.com/media/fcaN0b9yGcwbm/giphy.gif)

---

### Using `bcrypt` to create passwords in Rails

What's cool about `bcrypt`? By design, it's slow. This means that anyone who wants to crack it has to take a long time to brute-force passwords. It also allows you to define a column called `password_digest` and it will do the rest of the work.

_Remember, convention over configuration._ And especially in this case, we generally don't have the time or energy to build our own encryption that surpasses what already exists.

After installing the `bcrypt` gem, you can use a macro in your user model called `has_secure_password`, which does a lot of the integration for you. Go in and test this in the console. You can show how the `user` model ends up with a `password_digest` attribute even though you send in `password` through the `create`. Do it again, this time with a `password_confirmation` in the initialization hash. You can show how rails rejects the transaction.

Now that you've created a user with a password, you can do `user.authenticate("password")`

---

### Exposing user authentication in the UI

![](https://media.giphy.com/media/12OIWdzFhisgww/giphy.gif)

You can set up routes to work with users in the app.

```ruby
resources :users, only: [:new, :create, :show]
```

Now you can build a `form_for` for the `new` action:

```erb
<%= form_for @user do |f| %>
  <%= f.label :username %>
  <%= f.text_field :username %>
  <%= f.label :password %>
  <%= f.text_field :password %>
  <%= f.label :password_confirmation %>
  <%= f.text_field :password_confirmation %>
  <%= f.submit %>
<% end %>
```

Go through making the `create` controller:

```ruby
@user = User.new(user_params)
if @user.valid?
  @user.save
  redirect_to @user
else
  redirect_to new_user_path
end
```

Our form doesn't hide the password in the `input`, so change the text field to `f.password_field`.

So, to recap the necessary steps:

1.  `password_digest` as an attribute in our `users` table
2.  `bcrypt` installed in `Gemfile`
3.  `has_secure_password` in the `User` model

---

### Sessions and cookies

How does an application keep you logged in between requests? Remember, requests are stateless, so sessions allow us to provide a user a sense of continuity as the interact with the website.

How do cookies fit into this? Ultimately, they're just key-value pairs. Each website has it's own cookies. Cookies aren't secure, because they're not necessarily encrypted. We want to limit the amount and type of information stored in cookies. Rails automatically stores and encrypts the session id in our cookie.

What information do we want to store in the cookie?

Sessions aren't really stored in the database, so we don't use a model for them. However, they still need routes, a controller and views.

`routes.rb`

```ruby
get "signup", to: "users#new", as: "signup"
get "login", to: "sessions#new", as: "login"
post "sessions", to: "sessions#create", as: "sessions"
```

`sessions_controller.rb`

```ruby
def new
  # don't need anything in here, cause we're not setting up a
  # blank model to couple with the form
end

def create
  # no strong params cause there is no mass assignment
  @user = User.find_by(username: params[:username])
  if @user && @user.authenticate(params[:password])
    redirect_to @user
  else
    redirect_to login_path
  end
end
```

In certain cases, it's more secure to offer _less_ feedback to the user. This is why we both authenticate on the existence of the username, and the password match. Still, it's helpful to use `flash[:error]` here.

`sessions/new.html.erb`

Use a `form_tag` instead of a `form_for` here, we don't have a model to couple the form with.

_All forms need an action and a method, and here the action is `/sessions`._

```erb
<%= form_tag sessions_path do %>
  <%= label_tag "Username" %>
  <%= text_field_tag :username %>
  <%= label_tag "Password" %>
  <%= password_field_tag :password %>
  <%= submit_tag "Sign In" %>
<% end %>
```

#### Authorization and User-specific content

Have some model such that the user `has_many`. Given this association, we can show the user their specific objects (in this example, `song`) on their own page.

Augment `sessions_controller#create` with the following line after a successful authentication:

```ruby
session[:user_id] = @user.id
```

This allows us to save the user_id in the session cookie. `session` persists across the entire usage of the application, and `flash` works just between 2 requests.

Here are the steps that we can use to get our user's songs through the session:

1.  Get the sessions by user_id
2.  Get the user by user_id
3.  get the songs by user

In `SongsController#index`:

```ruby
if session[:user_id]
  @user = User.find(session[:user_id])
  @songs = @user.songs
else
  @songs = Song.all # or force a login
end
```

Show how this works and filter's the song by user (when logged in). However, you don't want to do this work over and over again. Where can you do this? `ApplicationController`!

`application_controller.rb`

```ruby
def current_user
  @current_user ||= User.find_by(id: session[:user_id])
end

def logged_in?
  !current_user.nil?
end
```

Now, you can refactor `SongsController#index`

```ruby
if logged_in?
  @songs = @current_user.songs
else
  @songs = Song.all # or force a login
end
```

This is still not perfect. We want to be able to redirect to the login page if the user isn't logged in yet.

Add the following to `ApplicationController`:

```ruby
def authorized
  redirect_to login_path unless logged_in?
end
```

Now, in each controller/action that needs to do this redirect, you can add:

```ruby
before_action :authorized
```

Make sure not to use this for the login path. Instead, you should use:

```ruby
skip_before_action :authorized, only: [:new, :create] # or whatever onlys you need
```

#### Logging out

So how do you log out? By destroying the session.

`routes.rb`

```ruby
delete "sessions", to: "sessions#destroy"
```

`sessions_controller.rb`

```ruby
def destroy
  session.delete(:user_id) # or session[:user_id] = nil
  @current_user = nil
end
```

We can have a button that shows a "Log Out" button if logged in, and a "Log In" button otherwise.

The best place to do this is in `application.html.erb`, but to expose our controller's method here, we must use the `helper_method :logged_in?` macro in our `ApplicationController`

Finally, in `application.html.erb`:

```erb
<% if logged_in? %>
  <%= link_to "Logout", sessions_path, method: :delete %>
<% else %>
  <%= link_to "Login", login_path %>
<% end %>
```

---

## External Resources:

- [BCrypt gem on github](https://github.com/codahale/bcrypt-ruby#why-you-should-use-bcrypt)
- [BCrypt Password class source code](https://github.com/codahale/bcrypt-ruby/blob/master/lib/bcrypt/password.rb#L23)
- [Rails Docs on security](https://guides.rubyonrails.org/security.html#sessions)
