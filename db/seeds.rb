puts "🧹 🧹 🧹 cleaning out the records... "

Favorite.destroy_all
Definition.destroy_all
User.destroy_all
Word.destroy_all
# Language.destroy_all

puts "🌬 resets ids"

Favorite.reset_pk_sequence
Definition.reset_pk_sequence
User.reset_pk_sequence
Word.reset_pk_sequence
# Language.reset_pk_sequence


puts "creating users..."
eric = User.create!(username: "erickim", password: "abc123")
sylwia = User.create!(username: "sylwiavargas", password: "abc123")
annie = User.create!(username: "anniezheng", password: "abc123")

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
erb = Word.create!(content: "erb")
self_w = Word.create!(content: "self")
oop = Word.create!(content: "oop")
variable = Word.create!(content: "variable")
method = Word.create!(content: "method")
object_ruby = Word.create!(content: "object (Ruby)")
hash = Word.create!(content: "hash")
array_ruby = Word.create!(content: "array (Ruby)")
variable_ruby = Word.create!(content: "variable (Ruby)")
instance = Word.create!(content: "instance")
argument = Word.create!(content: "argument")
parameter = Word.create!(content: "parameter")
instance_variable = Word.create!(content: "instance variable")
class_variable = Word.create!(content: "class variable")
instance_method = Word.create!(content: "instance method")
class_method = Word.create!(content: "class method")
attr_reader_w = Word.create!(content: "attr_reader")
attr_writer_w = Word.create!(content: "attr_writer")
attr_accessor_w = Word.create!(content: "attr_accessor")
has_many_w = Word.create!(content: "has_many")
belongs_to_w = Word.create!(content: "belongs_to")
has_many_through = Word.create!(content: "has_many through")
single_source_of_truth = Word.create!(content: "hash")
schema = Word.create!(content: "schema")
initialize_w = Word.create!(content: "initialize")
joiner = Word.create!(content: "joiner")
attribute = Word.create!(content: "attribute")
active_record = Word.create!(content: "active record")
rake = Word.create!(content: "rake")
gem = Word.create!(content: "gem")
gemfile = Word.create!(content: "gemfile")
crud = Word.create!(content: "crud")
mass_assignment = Word.create!(content: "mass assignment")
rollback = Word.create!(content: "rollback")
migration = Word.create!(content: "migration")
database_table = Word.create!(content: "database table")
iterate = Word.create!(content: "iterate")
bundle = Word.create!(content: "bundle")
faker = Word.create!(content: "faker")
tty_prompt = Word.create!(content: "tty prompt")
seed = Word.create!(content: "seed")
byebug = Word.create!(content: "byebug")
action = Word.create!(content: "action")
show_action = Word.create!(content: "show action")
index_action = Word.create!(content: "index action")
new_action = Word.create!(content: "new action")
edit_action = Word.create!(content: "edit action")
create_action = Word.create!(content: "create action")
destroy_action = Word.create!(content: "destroy action")
update_action = Word.create!(content: "update action")
path_helpers = Word.create!(content: "path helpers")
html_helpers = Word.create!(content: "HTML helpers")
partials = Word.create!(content: "partials")
layouts = Word.create!(content: "layouts")
validations = Word.create!(content: "validations")
link_to_w = Word.create!(content: "link_to")
button_to_w = Word.create!(content: "button_to")
collection_select_w = Word.create!(content: "collection_select")
redirect = Word.create!(content: "redirect")
render_ruby = Word.create!(content: "render (Ruby)")
bcrypt = Word.create!(content: "bcrypt")
named_scope = Word.create!(content: "named scope")
guard_clause = Word.create!(content: "guard clause")
associations = Word.create!(content: "associations")
flash_hash = Word.create!(content: "flash hash")
private_method = Word.create!(content: "private method")
cli = Word.create!(content: "cli")
setter_method = Word.create!(content: "setter_method")
getter_method = Word.create!(content: "getter_method")
reader_method = Word.create!(content: "reader_method")
writer_method = Word.create!(content: "writer_method")
object_oriented_programming = Word.create!(content: "object oriented programming")
functional_programming = Word.create!(content: "functional programming")
erd = Word.create!(content: "erd")
entity_relationship_diagram = Word.create!(content: "Entity Relationship Diagram")
domain_model = Word.create!(content: "domain model")
one_to_many_relationship = Word.create!(content: "one-to-many relationship")
many_to_many_relationship = Word.create!(content: "many_to_many relationship")
json = Word.create!(content: "json")
api = Word.create!(content: "api")
get_request = Word.create!(content: "get request")
put_request = Word.create!(content: "put request")
patch_request = Word.create!(content: "patch request")
delete_request = Word.create!(content: "delete request")
post_request = Word.create!(content: "post request")
web_scraping = Word.create!(content: "web scraping")
server = Word.create!(content: "server")
client = Word.create!(content: "client")
uri = Word.create!(content: "uri")
url = Word.create!(content: "url")
rest = Word.create!(content: "rest")
sessions = Word.create!(content: "sessions")
cookies = Word.create!(content: "cookies")
debugging = Word.create!(content: "debugging")
crud = Word.create!(content: "crud")
function = Word.create!(content: "function (JS)")
callback = Word.create!(content: "callback (JS)")
hoisting = Word.create!(content: "hoisting")
function_expression = Word.create!(content: "function expression")
function_invocation = Word.create!(content: "function invocation")
function_definition = Word.create!(content: "function definition")
debugger = Word.create!(content: "debugger")
console_log = Word.create!(content: "console.log")
let = Word.create!(content: "let")
const = Word.create!(content: "const")
var = Word.create!(content: "var")
variable = Word.create!(content: "variable (JS)")
array = Word.create!(content: "array (JS)")
object = Word.create!(content: "object (JS)")
dom_w = Word.create!(content: "DOM")
package = Word.create!(content: "package")
npm = Word.create!(content: "npm")
node = Word.create!(content: "node")
document = Word.create!(content: "document")
query_selector = Word.create!(content: "querySelector")
get_element_by_id = Word.create!(content: "getElementById")
query_selector_all = Word.create!(content: "querySelectorAll")
local_storage = Word.create!(content: "localStorage")
anonymous_function = Word.create!(content: "anonymous function")
first_class_functions = Word.create!(content: "first-class functions")
event_listener = Word.create!(content: "eventListener")
ecma = Word.create!(content: "ecma")
arrow_function = Word.create!(content: "arrow function")
vanilla_js = Word.create!(content: "vanilla js")
js = Word.create!(content: "JavaScript")
fetch = Word.create!(content: "fetch")
memoization = Word.create!(content: "memoization")
component = Word.create!(content: "component")
props = Word.create!(content: "props")
state = Word.create!(content: "state")
jsx = Word.create!(content: "jsx")
extends = Word.create!(content: "extends")
import = Word.create!(content: "import")
export = Word.create!(content: "export")
hooks = Word.create!(content: "hooks")
react = Word.create!(content: "react")
context = Word.create!(content: "context")
src = Word.create!(content: "src")
manifest = Word.create!(content: "manifest")
lifecycle_methods = Word.create!(content: "lifecycle methods")
constructor = Word.create!(content: "constructor")
render_react = Word.create!(content: "render (React)")
component_did_mount = Word.create!(content: "componentDidMount")
should_component_update = Word.create!(content: "shouldComponentUpdate")
component_did_catch = Word.create!(content: "componentDidCatch")
component_will_unmount = Word.create!(content: "componentWillUnmount")
use_state = Word.create!(content: "useState")
use_effect = Word.create!(content: "useEffect")
use_ref = Word.create!(content: "useRef")

puts "creating favorites..."
e_mvc = Favorite.create!(user: eric, word: mvc, priority_level: 5)
e_response = Favorite.create!(user: eric, word: response, priority_level: 3)
e_request = Favorite.create!(user: eric, word: request, priority_level: 3)
s_a_s = Favorite.create!(user: sylwia, word: angry_squid, priority_level: 5)
s_i_c_c = Favorite.create!(user: sylwia, word: ice_cream_cone, priority_level: 5)
s_s_p = Favorite.create!(user: sylwia, word: strong_params, priority_level: 5)
a_i_c_c = Favorite.create!(user: annie, word: ice_cream_cone, priority_level: 5)
a_s_p = Favorite.create!(user: annie, word: strong_params, priority_level: 5)


puts "creating definitions..."
angry_squid_def = Definition.create!(content: "'<%= %>': angry squid shoots ink or evaluates ruby code and prints", word: angry_squid)
controller_def = Definition.create!(content: "Communicates between the model (database) and views (user interface/website/browser)", word: controller)
controller_def_2 = Definition.create!(content: "A controller is the waiter; between the model and the view. It determines what the user will be doing/seeing based on the request", word: controller)
ice_cream_cone_def = Definition.create!(content: "'<% %>': Ice cream cone evaluates ruby code but does not print", word: ice_cream_cone)
model_def = Definition.create!(content: "A blueprint for creating instances; manages data in the database", word: model)
mvc_def = Definition.create!(content: "Model-View-Controller, its a design pattern for building web applications  (chef, waiter, serving/dining table)", word: mvc)
params_def = Definition.create!(content: "A hash with all the spicy user's input from the url input field or forms", word: params)
equest_def = Definition.create!(content: "Client sends a requests to get information to/from the server", word: request)
response_def = Definition.create!(content: "What server sends back to the user (client) after it processes the data", word: response)
route_def = Definition.create!(content: "A route is a path that allows you access a page of your preference; it connects with an appropriate method and renders an appropriate view", word: route)
strong_params_def = Definition.create!(content: "Rails safeguard against the meanies of the world -- it's a nested hash", word: strong_params)
view_def = Definition.create!(content: "The HTML files (what is displayed on the browser)", word: view)

puts "📚 📚 📚  let the show begin 📚 📚 📚 "


