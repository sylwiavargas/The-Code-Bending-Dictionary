puts "🧹 🧹 🧹 cleaning out the records... "

Favorite.destroy_all
Definition.destroy_all
Technology.destroy_all
RelatedWord.destroy_all
User.destroy_all
Word.destroy_all
Vote.destroy_all

puts "🌬 resets ids"

Favorite.reset_pk_sequence
Definition.reset_pk_sequence
Technology.reset_pk_sequence
RelatedWord.reset_pk_sequence
User.reset_pk_sequence
Word.reset_pk_sequence
Vote.reset_pk_sequence

puts "creating users..."

foobar = User.create!(username: "Foo", password: "abc123", email: "abc@gmail.com"
)

shreya = User.create!(username: "Shreya L", password: "abc123", admin: false, email: "abc@gmail.com"
)

juan = User.create!(username: "Juan L", password: "abc123", admin: false, email: "abc@gmail.com"
)

chenyun = User.create!(username: "chenyun", password: "abc123", admin: false, email: "abc@gmail.com"
)

eric = User.create!(username: "erickim", password: "abc123", admin: true, email: "abc@gmail.com"
)

sylwia = User.create!(username: "sylwiavargas", password: "abc123", admin: true, email: "abc@gmail.com"
)

annie = User.create!(username: "anniezheng", password: "abc123", admin: true, email: "abc@gmail.com"
)

isabel = User.create!(username: "isabelklee", password: "abc123", admin: true, email: "abc@gmail.com"
)

puts "creating technologies..."
action = Word.create!(content: "action", approved: true)
active_record = Word.create!(content: "active record", approved: true)
angry_squid = Word.create!(content: "angry squid", approved: true)
anonymous_function = Word.create!(content: "anonymous function", approved: true)
api = Word.create!(content: "api", approved: true)
argument = Word.create!(content: "argument", approved: true)
array_ruby = Word.create!(content: "array (Ruby)", approved: true)
array = Word.create!(content: "array (JS)", approved: true)
arrow_function = Word.create!(content: "arrow function", approved: true)
associations = Word.create!(content: "associations", approved: true)
attr_accessor_w = Word.create!(content: "attr_accessor", approved: true)
attr_reader_w = Word.create!(content: "attr_reader", approved: true)
attr_writer_w = Word.create!(content: "attr_writer", approved: true)
attribute = Word.create!(content: "attribute", approved: true)
bcrypt = Word.create!(content: "bcrypt", approved: true)
belongs_to_w = Word.create!(content: "belongs_to", approved: true)
bundle = Word.create!(content: "bundle", approved: true)
button_to_w = Word.create!(content: "button_to", approved: true)
byebug_w = Word.create!(content: "byebug", approved: true)
callback = Word.create!(content: "callback (JS)", approved: true)
class_method = Word.create!(content: "class method", approved: true)
class_variable = Word.create!(content: "class variable", approved: true)
class_word = Word.create!(content: "class", approved: true)
cli = Word.create!(content: "cli", approved: true)
client = Word.create!(content: "client", approved: true)
collection_select_w = Word.create!(content: "collection_select", approved: true)
component_did_catch = Word.create!(content: "componentDidCatch", approved: true)
component_did_mount = Word.create!(content: "componentDidMount", approved: true)
component_will_unmount = Word.create!(content: "componentWillUnmount", approved: true)
component = Word.create!(content: "component", approved: true)
console_log = Word.create!(content: "console.log", approved: true)
const = Word.create!(content: "const", approved: true)
constructor = Word.create!(content: "constructor", approved: true)
context = Word.create!(content: "context", approved: true)
controller = Word.create!(content: "controller", approved: true)
cookies = Word.create!(content: "cookies", approved: true)
create_action = Word.create!(content: "create action", approved: true)
crud = Word.create!(content: "crud", approved: true)
database_table = Word.create!(content: "database table", approved: true)
debugger = Word.create!(content: "debugger", approved: true)
debugging = Word.create!(content: "debugging", approved: true)
delete_request = Word.create!(content: "delete request", approved: true)
destroy_action = Word.create!(content: "destroy action", approved: true)
document = Word.create!(content: "document", approved: true)
dom_w = Word.create!(content: "DOM", approved: true)
domain_model = Word.create!(content: "domain model", approved: true)
ecma = Word.create!(content: "ecma", approved: true)
edit_action = Word.create!(content: "edit action", approved: true)
entity_relationship_diagram = Word.create!(content: "Entity Relationship Diagram", approved: true)
enumerable_method = Word.create!(content: "enumerable method", approved: true)
enumerable = Word.create!(content: "enumerable", approved: true)
erb = Word.create!(content: "erb", approved: true)
erd = Word.create!(content: "erd", approved: true)
erd = Word.create!(content: "erd"
)
event_listener = Word.create!(content: "eventListener", approved: true)
export = Word.create!(content: "export", approved: true)
extends = Word.create!(content: "extends", approved: true)
faker = Word.create!(content: "faker", approved: true)
fetch = Word.create!(content: "fetch", approved: true)
first_class_functions = Word.create!(content: "first-class functions", approved: true)
flash_hash = Word.create!(content: "flash hash", approved: true)
function_definition = Word.create!(content: "function definition", approved: true)
function_expression = Word.create!(content: "function expression", approved: true)
function_invocation = Word.create!(content: "function invocation", approved: true)
function = Word.create!(content: "function (JS)", approved: true)
functional_programming = Word.create!(content: "functional programming", approved: true)
gem = Word.create!(content: "gem", approved: true)
gemfile = Word.create!(content: "gemfile", approved: true)
general_tech = Technology.create!(name: "General Tech"
)
get_element_by_id = Word.create!(content: "getElementById", approved: true)
get_request = Word.create!(content: "get request", approved: true)
getter_method = Word.create!(content: "getter_method", approved: true)
guard_clause = Word.create!(content: "guard clause", approved: true)
has_many_through = Word.create!(content: "has_many through", approved: true)
has_many_w = Word.create!(content: "has_many", approved: true)
hash = Word.create!(content: "hash", approved: true)
hoisting = Word.create!(content: "hoisting", approved: true)
hooks = Word.create!(content: "hooks", approved: true)
html_helpers = Word.create!(content: "HTML helpers", approved: true)
ice_cream_cone = Word.create!(content: "ice-cream cone", approved: true)
import = Word.create!(content: "import", approved: true)
index_action = Word.create!(content: "index action", approved: true)
initialize_w = Word.create!(content: "initialize", approved: true)
instance_method = Word.create!(content: "instance method", approved: true)
instance_variable = Word.create!(content: "instance variable", approved: true)
instance = Word.create!(content: "instance", approved: true)
iterate = Word.create!(content: "iterate", approved: true)
javascript = Technology.create!(name: "JavaScript"
)
joiner = Word.create!(content: "joiner", approved: true)
js = Word.create!(content: "JavaScript", approved: true)
json = Word.create!(content: "json", approved: true)
jsx = Word.create!(content: "jsx", approved: true)
layouts = Word.create!(content: "layouts", approved: true)
let = Word.create!(content: "let", approved: true)
lifecycle_methods = Word.create!(content: "lifecycle methods", approved: true)
link_to_w = Word.create!(content: "link_to", approved: true)
local_storage = Word.create!(content: "localStorage", approved: true)
manifest = Word.create!(content: "manifest", approved: true)
many_to_many_relationship = Word.create!(content: "many_to_many relationship", approved: true)
mass_assignment = Word.create!(content: "mass assignment", approved: true)
memoization = Word.create!(content: "memoization", approved: true)
method = Word.create!(content: "method", approved: true)
migration = Word.create!(content: "migration", approved: true)
model = Word.create!(content: "Model", approved: true)
module_word = Word.create!(content: "Module", approved: true)
mvc = Word.create!(content: "mvc", approved: true)
named_scope = Word.create!(content: "named scope", approved: true)
new_action = Word.create!(content: "new action", approved: true)
node = Word.create!(content: "node", approved: true)
npm = Word.create!(content: "npm", approved: true)
object_oriented_programming = Word.create!(content: "object oriented programming", approved: true)
object_ruby = Word.create!(content: "object (Ruby)", approved: true)
object = Word.create!(content: "object (JS)", approved: true)
one_to_many_relationship = Word.create!(content: "one-to-many relationship", approved: true)
oop = Word.create!(content: "oop", approved: true)
package = Word.create!(content: "package", approved: true)
parameter = Word.create!(content: "parameter", approved: true)
params = Word.create!(content: "params", approved: true)
partials = Word.create!(content: "partials", approved: true)
patch_request = Word.create!(content: "patch request", approved: true)
path_helpers = Word.create!(content: "path helpers", approved: true)
post_request = Word.create!(content: "post request", approved: true)
private_method = Word.create!(content: "private method", approved: true)
props = Word.create!(content: "props", approved: true)
put_request = Word.create!(content: "put request", approved: true)
puts "creating words..."
query_selector_all = Word.create!(content: "querySelectorAll", approved: true)
query_selector = Word.create!(content: "querySelector", approved: true)
rails = Technology.create!(name: "Rails"
)
rake = Word.create!(content: "rake", approved: true)
react_word = Word.create!(content: "react", approved: true)
react = Technology.create!(name: "React"
)
reader_method = Word.create!(content: "reader_method", approved: true)
redirect = Word.create!(content: "redirect", approved: true)
redux = Technology.create!(name: "Redux"
)
render_react = Word.create!(content: "render (React)", approved: true)
render_ruby = Word.create!(content: "render (Ruby)", approved: true)
request = Word.create!(content: "request", approved: true)
response = Word.create!(content: "response", approved: true)
rest = Word.create!(content: "rest", approved: true)
rollback = Word.create!(content: "rollback", approved: true)
route = Word.create!(content: "route", approved: true)
ruby = Technology.create!(name: "Ruby"
)
schema = Word.create!(content: "schema", approved: true)
seed = Word.create!(content: "seed", approved: true)
self_w = Word.create!(content: "self", approved: true)
server = Word.create!(content: "server", approved: true)
sessions = Word.create!(content: "sessions", approved: true)
setter_method = Word.create!(content: "setter_method", approved: true)
should_component_update = Word.create!(content: "shouldComponentUpdate", approved: true)
show_action = Word.create!(content: "show action", approved: true)
single_source_of_truth = Word.create!(content: "hash", approved: true)
src = Word.create!(content: "src", approved: true)
state = Word.create!(content: "state", approved: true)
strong_params = Word.create!(content: "strong params", approved: true)
tty_prompt = Word.create!(content: "tty prompt", approved: true)
unit_testing = Word.create!(content: "Unit Testing", approved: true)
update_action = Word.create!(content: "update action", approved: true)
uri = Word.create!(content: "uri", approved: true)
url = Word.create!(content: "url", approved: true)
use_effect = Word.create!(content: "useEffect", approved: true)
use_ref = Word.create!(content: "useRef", approved: true)
use_state = Word.create!(content: "useState", approved: true)
validations = Word.create!(content: "validations", approved: true)
vanilla_js = Word.create!(content: "vanilla js", approved: true)
var = Word.create!(content: "var", approved: true)
variable_ruby = Word.create!(content: "variable (Ruby)", approved: true)
variable = Word.create!(content: "variable", approved: true)
variable = Word.create!(content: "variable (JS)", approved: true)
view = Word.create!(content: "view", approved: true)
web_scraping = Word.create!(content: "web scraping", approved: true)
writer_method = Word.create!(content: "writer_method", approved: true)
yagni = Word.create!(content: "Yagni", approved: true)

# puts "creating favorites..."
e_mvc = Favorite.create!(
  user: foobar, 
  word: mvc
)
# e_response = Favorite.create!(
#   user: eric, 
#   word: response
# )
# e_request = Favorite.create!(
#   user: eric, 
#   word: request
# )
# s_a_s = Favorite.create!(
#   user: sylwia, 
#   word: angry_squid
# )
# s_i_c_c = Favorite.create!(
#   user: sylwia, 
#   word: ice_cream_cone
# )
# s_s_p = Favorite.create!(
#   user: sylwia, 
#   word: strong_params
# )
# a_i_c_c = Favorite.create!(
#   user: annie, 
#   word: ice_cream_cone
# )
# a_s_p = Favorite.create!(
#   user: annie, 
#   word: strong_params
# )


puts "creating definitions..."

# FOR REFERENCE: read_more attributes example
belongs_to_def = Definition.create!(
  user: User.first, 
  approved: true, 
  content: "a one-to-one relationship between two tables in which one of them belongs to the other. This is based on where the foreing keys are located in that relationship.",
  word: belongs_to_w,
  read_more_url: "https://www.freecodecamp.org/news/understanding-the-basics-of-ruby-on-rails-sql-databases-and-how-they-work-7a628cd42073/", 
  read_more_at:"FreeCodeCamp Blog",
  technology: rails
)

# FOR REFERENCE: meme attributes example
unit_testing_def = Definition.create!(
  user: User.first, 
  approved: true,  content: "refers to the practice of testing areas(units) of code to verify that works as expected.", 
  word: unit_testing, 
  read_more_url: "https://guides.rubyonrails.org/testing.html", 
  read_more_at: "Ruby on Rails Guides", 
  meme_url: "https://i.pinimg.com/originals/fb/5f/67/fb5f67bb4a5be5b072a527d864309e55.jpg", 
  meme_alt_text: "Image of Principal Skinner from The Simpsons with buildings skylines as background. In the first frame, he is standing with a hand to his chin, a text buble reads: 'Is my code bad?'. On the second frame, he is standing with one hand at belly height, a text buble reads: 'No, the tests are wrong'.", 
  technology: general_tech
)

### HERE ARE DEFINITIONS --- ADD YOURS BELOW
angry_squid_def = Definition.create!(
  user: User.first, 
  approved: true, 
  content: "'<%= %>': angry squid shoots ink or evaluates ruby code and prints", 
  word: angry_squid, 
  read_more_url: "https://dev.to/sylwiavargas/which-erb-tag-should-i-use-53f1", 
  read_more_at: "Dev blog", 
  meme_url: "https://res.cloudinary.com/practicaldev/image/fetch/s--XEpd1g3r--/c_limit%2Cf_auto%2Cfl_progressive%2Cq_auto%2Cw_880/https://dev-to-uploads.s3.amazonaws.com/i/qi9kko95vgpn0iknjaq0.png", 
  meme_alt_text:"a graphic erb cheatsheet for when to use erb tags or html. If code needs to be visible or return something you want to use the angry squid <%=", 
  technology: rails
)
argument_def = Definition.create!(
 user: User.first,
 approved: true,
 content: "An argument is what you invoke the method or function with",
 word: argument,
 technology: general_tech,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
associations_def = Definition.create!(
  user: User.first,approved: true, 
  content: "the relationship between the tables(models) in the database", 
  word: associations, 
  read_more_url: "https://medium.com/swlh/the-simplest-way-to-understand-associations-in-rails-dc03cfe067f2", 
  read_more_at: "Medium blog",
   technology: ruby
  )
attr_accessor_def = Definition.create!(
 user: User.first,
 approved: true,
 content: "attr_accessor allows you to both read and write over a method.",
 word: attr_accessor_w,
 technology: ruby,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
attr_accessor_def_2 = Definition.create!(
 user: User.first,
 approved: true,
 content: "attr_accessor is attr_reader and attr_writer combined.",
 word: attr_accessor_w,
 technology: ruby,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
attr_reader_def = Definition.create!(
 user: User.first,
 approved: true,
 content: "attr_reader allows you to only read (access) information but not write (change) it",
 word: attr_reader_w,
 technology: ruby,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
attr_reader_def_2 = Definition.create!(
 user: User.first,
 approved: true,
 content: "it is a getter method",
 word: attr_reader_w,
 technology: ruby,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
attr_writer_def = Definition.create!(
 user: User.first,
 approved: true,
 content: "attr_writer allows you to only write (change) information but not read (view) it",
 word: attr_writer_w,
 technology: ruby,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
attr_writer_def_2 = Definition.create!(
 user: User.first,
 approved: true,
 content: "it is a setter method",
 word: attr_writer_w,
 technology: ruby,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
attribute_def = Definition.create!(
 user: User.first,
 approved: true,
 content: "If an instance is a human called Alex, you can think of attributes as different features: age, eye_color, height",
 word: attribute,
 technology: ruby,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
class_def = Definition.create!(
 user: User.first,
 approved: true,
 content: "In Object-Oriented Programming, everything is an instance of a class.",
 word: class_word,
 technology: ruby,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
class_def_2 = Definition.create!(
 user: User.first,
 approved: true,
 content: "Class is like a blueprint from which Ruby creates instances.",
 word: class_word,
 technology: ruby,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
class_def_3 = Definition.create!(
 user: User.first,
 approved: true,
 content: "Class is a cookie-cutter and instances are cookies",
 word: class_word,
 technology: ruby,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
class_method_def = Definition.create!(
 user: User.first,
 approved: true,
 content: "If a class is Dog, a class method example would be 'Dog.all', or 'Dog.dog_with_the_longest_ears'",
 word: class_method,
 technology: ruby,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
class_method_def_2 = Definition.create!(
 user: User.first,
 approved: true,
 content: "It's a method that concerns ALL instances of a given class and is marked with a dot (.)",
 word: class_method,
 technology: ruby,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
class_method_def_3 = Definition.create!(
 user: User.first,
 approved: true,
 content: "It's a method that is used to compare or store all instances of the method (e.g. .all)",
 word: class_method,
 technology: ruby,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
class_variable_def = Definition.create!(
 user: User.first,
 approved: true,
 content: "It's a variable that's stored in the class and is marked as @@ (e.g. @@all)",
 word: class_variable,
 technology: ruby,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
controller_def = Definition.create!(
  user: User.first, 
  approved: true,
  content: "Communicates between the model (database) and views (user interface/website/browser)",
 word: controller, 
 technology: ruby
)
controller_def_2 = Definition.create!(
  user: User.first, 
  approved: true,
  content: "A controller is the waiter; between the model and the view. It determines what the user will be doing/seeing based on the request", 
  word: controller, 
  technology: ruby
)
crud_def = Definition.create!(
  user: User.first, 
  approved: true, 
  content:"An acronym for CREATE, READ, UPDATE, and DELETE. These are 4 basic actions that we can use when dealing with the database ", 
  word: crud, 
  technology: general_tech
)
enumerable_def = Definition.create!(
 user: User.first,
 approved: true,
 content: "enumerables are collections, i.e. arrays, sets and hashes",
 word: enumerable,
 technology: ruby,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
enumerable_method_def = Definition.create!(
 user: User.first,
 approved: true,
 content: "enumerable methods are the ones you can call on collections, e.g. .map, .select, .filter, .each, .size",
 word: enumerable_method,
 technology: ruby,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
erd_def = Definition.create!(
 user: User.first,
 approved: true,
 content: "it's a diagram of model relationship",
 word: erd,
 technology: general_tech,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
erd_def_2 = Definition.create!(
 user: User.first,
 approved: true,
 content: "it's a domain model of your database",
 word: erd,
 technology: general_tech,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
extend_def = Definition.create!(
 user: User.first,
 approved: true,
 content: "To define a React component class, you need to extend React.Component. The newly defined react component class will inherit functions from the React.Component",
 word: extends,
 technology: react,
 read_more_url: "https://www.javascriptjanuary.com/blog/extending-react",
 read_more_at: "JavaScript January",
 meme_url: "https://media.giphy.com/media/3o6MbpwMVsBkNU9RLO/giphy.gif",
 meme_alt_text: "inheritance"
)
flash_hash_def = Definition.create!(
  user: User.first, 
  approved: true, 
  content: "A way to pass information from one controller action to another ONLY ONCE (i.e. displaying on a login form the user entered the wrong password)", 
  word: flash_hash, 
  technology: rails
)
getter_method_def=Definition.create!(
  user: User.first, 
  approved: true, 
  content: "This method is used to retrieve or GET a value of an instance variable", 
  word: getter_method, 
  technology: general_tech 
)
hash_def = Definition.create!(
  user: User.first, 
  approved: true,  content: "is a collection of key-value pairs like this: 'employee: salary'. It is similar to an Array, except that the data pairing is done randomly using the object's keys (ie. employee) instead of a numeric index. A hash is also known as an associative array", 
  word: hash, 
  read_more_url: "http://ruby-for-beginners.rubymonstas.org/built_in_classes/hashes.html", 
  read_more_at: "Ruby For Beginners by Ruby Monstas",
  meme_url: "https://external-preview.redd.it/RxSr9RZBQcfmOsmWKoyNqFdrL7NJsjNh7KOIJm7eey4.jpg?auto=webp&s=16bded488109f382ba4bae8d38ccd1ee55d5f3c3",
  meme_alt_text: "Image of the rapper/actor T-ice driving a car on a street with trees on the sides. White text on image reads %i{it was a good day} => [:it, :was, :a, :good, :day]", 
  technology: ruby
)
initialize_w_def = Definition.create!(
 user: User.first,
 approved: true,
 content: "it's a method that tells ruby to create an instance based on the blueprint provided by the class",
 word: initialize_w,
 technology: ruby,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
instance_def = Definition.create!(
 user: User.first,
 approved: true,
 content: "Instance is an object created following a blueprint from a class",
 word: instance,
 technology: ruby,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
instance_def_2 = Definition.create!(
 user: User.first,
 approved: true,
 content: "If class is a cookie-cutter, then instance is a cookie!",
 word: instance,
 technology: ruby,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
instance_def_3 = Definition.create!(
 user: User.first,
 approved: true,
 content: "Think about instances as examples of a group. E.g. ruby_dev_99 would be an instance of a class User",
 word: instance,
 technology: ruby,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
instance_method_def = Definition.create!(
 user: User.first,
 approved: true,
 content: "These are methods marked with a pound sign (#), they refer to what an instace can do",
 word: instance_method,
 technology: ruby,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
instance_method_def_2 = Definition.create!(
 user: User.first,
 approved: true,
 content: "It is the behavior of an instance of a given class",
 word: instance_method,
 technology: ruby,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
instance_method_def_3 = Definition.create!(
 user: User.first,
 approved: true,
 content: "If an instance is a dog called Floofy, an example of an instance method would be 'Dog#bark', or 'Dog#chase_its_tail'",
 word: instance_method,
 technology: ruby,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
instance_variable_def = Definition.create!(
 user: User.first,
 approved: true,
 content: "It's a variable that stores information about the given instance and is marked as @ (e.g. @age)",
 word: instance_method,
 technology: ruby,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
ice_cream_cone_def = Definition.create!(
  user: User.first, 
  approved: true, 
  content: "'<% %>': Ice cream cone evaluates ruby code but does not print", 
  word: ice_cream_cone, 
  read_more_url: "https://dev.to/sylwiavargas/which-erb-tag-should-i-use-53f1", 
  read_more_at: "Dev blog", 
  technology: rails
)
jsx_def = Definition.create!(
 user: User.first,
 approved: true,
 content: "JSX stands for JavaScript XML. JSX converts HTML tags into react elements.",
 word: jsx,
 technology: react,
 read_more_url: "https://www.w3schools.com/react/react_jsx.asp#:~:text=JSX%20stands%20for%20JavaScript%20XML,and%20add%20HTML%20in%20React.",
 read_more_at: "W3 School",
 meme_url: "https://media.giphy.com/media/5WJlk4CjBWZ5SNE4SC/giphy.gif",
 meme_alt_text: "transform"
)
model_def = Definition.create!(
  user: User.first, 
  approved: true, 
  content: "a blueprint for creating instances; manages data in the database", 
  word: model, 
  meme_url: "https://github.com/sylwiavargas/schedules/blob/master/mod1-lectures/08-Classes-Instances-Attributes/dog-rb-2.png?raw=true", 
  meme_alt_text: "a personified Ruby assembles a dog following an Ikea-like manual",
   technology: ruby
  )
module_word_def_js = Definition.create!(
  user: User.first, 
  approved: true,
  content: "Your personal toolbox of functions that can be called upon instead of repeating them in your code", 
  word: module_word, 
  technology: javascript
)
module_word_def_ruby = Definition.create!(
  user: User.first, 
  approved: true,
  content: "Your personal toolbox of methods that can be called upon instead of repeating them in your code", 
  word: module_word, 
  technology: ruby
)
mvc_def = Definition.create!(
  user: User.first, 
  approved: true,
  content: "Model-View-Controller, its a design pattern for building web applications  (chef, waiter, serving/dining table)", 
word: mvc, 
technology: rails
)
object_oriented_programming_def = Definition.create!(
  user: juan, 
  content: "Object Oriented Programming is a programming design pattern that allows you to build code modules, called classes, which work as blueprints used to create instances of objects with specific attributes and behaviors defined in the class layout.", 
  word: object_oriented_programming, 
  technology: general_tech, 
  read_more_url:"https://www
  .educative.io/blog/object-oriented-programming", 
  read_more_at: "Educative", 
  meme_url:"https://miro.medium.com/max/2400/1*L_uA2YbOpgF4loAX3OkXzw.jpeg", 
  meme_alt_text:"Image of the actor Leonardo DiCaprio holding a glass of champagne. White text on image reads 'Object Oriented Programming, because you've got class'"
)
oop_def = Definition.create!(
  user: juan, 
  content: "OOP stands for 'Object Oriented Programming'. Object Oriented Programming is a programming design pattern that allows you to build code modules, called classes, which work as blueprints used to create instances of objects with specific attributes and behaviors defined in the class layout.", 
  word: object_oriented_programming, 
  technology: general_tech, 
  read_more_url:"https://www
  .educative.io/blog/object-oriented-programming", 
  read_more_at: "Educative", 
  meme_url:"https://miro.medium.com/max/2400/1*L_uA2YbOpgF4loAX3OkXzw.jpeg", 
  meme_alt_text:"Image of the actor Leonardo DiCaprio holding a glass of champagne. White text on image reads 'Object Oriented Programming, because you've got class'"
)
parameter_def = Definition.create!(
 user: User.first,
 approved: true,
 content: "A parameter is an argument that you include in the function/method definition",
 word: parameter,
 technology: general_tech,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
parameter_def_2 = Definition.create!(
 user: User.first,
 approved: true,
 content: "It's like a placeholder variable for when the function is invoked later that you can use in the function/method body",
 word: parameter,
 technology: general_tech,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
params_def = Definition.create!(
  user: User.first, 
  approved: true,
  content: "A hash with all the spicy user's input from the url input field or forms", 
  word: params, 
  technology: ruby
)
props_def = Definition.create!(
 user: User.first,
 approved: true,
 content: "props stands for properties, it is used for passing custom data from parent component to child component",
 word: props,
 technology: react,
 read_more_url: "https://programmingwithmosh.com/javascript/react-props-vs-state/",
 read_more_at: "programmingwithmosh.com",
 meme_url: "https://media.giphy.com/media/1oFqxMYv5JQvuFtX8o/giphy.gif",
 meme_alt_text: "sharing"
)
request_def = Definition.create!(
  user: User.first, 
  approved: true,
  content: "Client sends a requests to get information to/from the server", 
  word: request, 
  technology: rails
)
response_def = Definition.create!(
  user: User.first, 
  approved: true,
  content: "What server sends back to the user (client) after it processes the data", 
word: response, 
technology: rails
)
route_def = Definition.create!(
  user: User.first, 
  approved: true, 
  content: "A route is a path that allows you access a page of your preference; it connects with an appropriate method and renders an appropriate view",
   word: route, 
   technology: general_tech
  )
self_w = Definition.create!(
 user: User.first,
 approved: true,
 content: "self is what the method is called on; it's like the subject of the method so in floofy.bark, floofy will be the self and in Dog.all Dog will be self",
 word: self_w,
 technology: ruby,
 read_more_url: "",
 read_more_at: "",
 meme_url: "",
 meme_alt_text: ""
)
setter_method_def=Definition.create!(
  user: User.first, 
  approved: true, 
  content: "This method is used to SET or assign the value of an instance variable", 
  word: setter_method, 
  technology: general_tech 
)
strong_params_def = Definition.create!(
  user: User.first, 
  approved: true, 
  content: "Rails safeguard against the meanies of the world -- it's a nested hash", 
  word: strong_params, 
  technology: rails
)
view_def = Definition.create!(
  user: User.first, 
  approved: true,
  content: "The HTML files (what is displayed on the browser)", 
  word: view, 
  technology: rails
)
web_scraping_def = Definition.create!(
  user: shreya, 
  content: "In its simplest form, web scraping can be thought of as copying and pasting data from a website. In it's more complex form, it can be thought of as an automated process of collecting hundreds to billions of data points from the web.", 
  word: web_scraping, 
  technology: general_tech, 
  read_more_url:"https://www.scrapinghub.com/what-is-web-scraping/", 
  read_more_at: "Scraping Hub", 
  meme_url:"https://www.octoparse.com/media/7179/find-data.jpg", 
  meme_alt_text:""
)
yagni_def = Definition.create!(
 user: User.first,
 approved: true,
 content: "short for You Aren't Gonna Need It, which means that you should not write anything extra just in case",
 word: yagni,
 technology: general_tech,
 read_more_url: "https://en.wikipedia.org/wiki/You_aren%27t_gonna_need_it",
 read_more_at: "Wikipedia",
 meme_url: "",
 meme_alt_text: ""
)
yagni_def_2 = Definition.create!(
 user: User.first,
 approved: true,
 content: "Always implement things when you actually need them, never when you just foresee that you need them.",
 word: yagni,
 technology: general_tech,
 read_more_url: "https://deviq.com/yagni/",
 read_more_at: "DevIQ",
 meme_url: "",
 meme_alt_text: ""
)

puts "creating votes..."

model_def_vote_foobar = Vote.create!(
  user: foobar, definition: model_def
) # value 1
model_def_vote_chenyun = Vote.create!(
  user: chenyun, definition: model_def
) # value 1
controller_def_2_vote_chenyun = Vote.create!(
  user: chenyun, definition: controller_def_2, value: 10
)

puts "📚 📚 📚  let the show begin 📚 📚 📚 "
