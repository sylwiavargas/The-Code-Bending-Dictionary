Rails.application.routes.draw do
  
  resources :definitions, only: [:new, :create, :update, :edit, :delete]
  resources :favorites, only: [:new, :create, :index]
  resources :words


  # GET THE USER THE LOGIN FORM
  get "/login", to: "students#login", as: "login"
  # HANDLE THE LOGIN FORM SUBMISSION
  post "/send_the_form_here", to: "students#handle_login"
  delete "/logout", to: "students#logout", as: "logout"




  get "/profile", to: "students#profile", as: "profile"
  patch "/increase_age/:age_to_increase", to: "students#increase_age"






  
  get "/students", to: "students#index", as: "students" #students_path
  get "/students/new", to: "students#new", as: "new_student"
  post "/students", to: "students#create"
  get "/students/:id", to: "students#show", as: "student" #student_path(id) or an instance student_path(@student)
  get '/students/:id/edit', to: 'students#edit', as: 'edit_student'
  patch '/students/:id', to: 'students#update'
  delete 'students/:id', to: 'students#destroy'

end
