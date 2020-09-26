puts "cleaning out the records... "

Favorite.destroy_all
Definition.destroy_all
Student.destroy_all
Word.destroy_all

puts "creating students..."
eric = Student.create!(first_name: "Eric", last_name: "Kim", age: 50_000, password: "abc123")
sylwia = Student.create!(first_name: "Sylwia", last_name: "Vargas", age: 30, password: "abc123")
annie = Student.create!(first_name: "Annie", last_name: "Zheng", age: 8_999_999, password: "abc123")
isabel = Student.create!(first_name: "Isabel", last_name: "Lee", age: 8_999_999, password: "abc123")
nunny = Student.create!(first_name: "Nunny", last_name: "Reyes", age: 8_999_999, password: "abc123")

puts "creating words..."
model = Word.create!(content: "Model")
controller = Word.create!(content: "controller")
params = Word.create!(content: "params")
strong_params = Word.create!(content: "strong params")
request = Word.create!(content: "request")
response = Word.create!(content: "response")
ice_cream_cone = Word.create!(content: "ice-cream cone")
angry_squid = Word.create!(content: "angry squid")
route = Word.create!(content: "route")
view = Word.create!(content: "view")
mvc = Word.create!(content: "mvc")

puts "creating favorites..."
e_mvc = Favorite.create!(student: eric, word: mvc, priority_level: 5)
e_response = Favorite.create!(student: eric, word: response, priority_level: 3)
e_request = Favorite.create!(student: eric, word: request, priority_level: 3)
s_a_s = Favorite.create!(student: sylwia, word: angry_squid, priority_level: 5)
s_i_c_c = Favorite.create!(student: sylwia, word: ice_cream_cone, priority_level: 5)
s_i_c_c = Favorite.create!(student: sylwia, word: strong_params, priority_level: 5)

puts "creating definitions..."
model_def = Definition.create!(content: "A blueprint for creating instances; manages data in the database", word: model)
controller_def = Definition.create!(content: "Communicates between the model (database) and views (user interface/website/browser)", word: controller)
controller_def_2 = Definition.create!(content: "A controller is the waiter; between the model and the view. It determines what the user will be doing/seeing based on the request", word: controller)
params_def = Definition.create!(content: "A hash with all the spicy user's input from the url input field or forms", word: params)
strong_params_def = Definition.create!(content: "Rails safeguard against the meanies of the world -- it's a nested hash", word: strong_params)
request_def = Definition.create!(content: "Client sends a requests to get information to/from the server", word: request)
response_def = Definition.create!(content: "What server sends back to the user (client) after it processes the data", word: response)
ice_cream_cone_def = Definition.create!(content: "'<% %>': Ice cream cone evaluates ruby code but does not print", word: ice_cream_cone)
angry_squid_def = Definition.create!(content: "'<%= %>': angry squid shoots ink or evaluates ruby code and prints", word: angry_squid)
route_def = Definition.create!(content: "A route is a path that allows you access a page of your preference; it connects with an appropriate method and renders an appropriate view", word: route)
view_def = Definition.create!(content: "The HTML files (what is displayed on the browser)", word: view)
mvc_def = Definition.create!(content: "Model-View-Controller, its a design pattern for building web applications  (chef, waiter, serving/dining table)", word: mvc)

puts "📚 📚 📚  let the show begin 📚 📚 📚 "