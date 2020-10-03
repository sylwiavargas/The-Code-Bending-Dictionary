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
foobar = User.create(first_name: "Foo", last_name: "Bar", nickname: "foobar", age: 1000, password: "abc123")
# eric = User.create!(username: "erickim", password: "abc123")
# sylwia = User.create!(username: "sylwiavargas", password: "abc123")
# annie = User.create!(username: "anniezheng", password: "abc123")

puts "creating words..."
model = Word.create!(content: "Model", approved: true)
module_word = Word.create!(content: "Module", approved: true)
controller = Word.create!(content: "controller", approved: true)
params = Word.create!(content: "params", approved: true)
strong_params = Word.create!(content: "strong params", approved: true)
request = Word.create!(content: "request", approved: true)
response = Word.create!(content: "response", approved: true)
ice_cream_cone = Word.create!(content: "ice-cream cone", approved: true)
angry_squid = Word.create!(content: "angry squid", approved: true)
route = Word.create!(content: "route", approved: true)
view = Word.create!(content: "view", approved: true)
mvc = Word.create!(content: "mvc", approved: true)
erb = Word.create!(content: "erb", approved: true)
self_w = Word.create!(content: "self", approved: true)
oop = Word.create!(content: "oop", approved: true)
variable = Word.create!(content: "variable", approved: true)
method = Word.create!(content: "method", approved: true)
object_ruby = Word.create!(content: "object (Ruby)", approved: true)
hash = Word.create!(content: "hash", approved: true)
array_ruby = Word.create!(content: "array (Ruby)", approved: true)
variable_ruby = Word.create!(content: "variable (Ruby)", approved: true)
instance = Word.create!(content: "instance", approved: true)
argument = Word.create!(content: "argument", approved: true)
parameter = Word.create!(content: "parameter", approved: true)
instance_variable = Word.create!(content: "instance variable", approved: true)
class_variable = Word.create!(content: "class variable", approved: true)
instance_method = Word.create!(content: "instance method", approved: true)
class_method = Word.create!(content: "class method", approved: true)
attr_reader_w = Word.create!(content: "attr_reader", approved: true)
attr_writer_w = Word.create!(content: "attr_writer", approved: true)
attr_accessor_w = Word.create!(content: "attr_accessor", approved: true)
has_many_w = Word.create!(content: "has_many", approved: true)
belongs_to_w = Word.create!(content: "belongs_to", approved: true)
has_many_through = Word.create!(content: "has_many through", approved: true)
single_source_of_truth = Word.create!(content: "hash", approved: true)
schema = Word.create!(content: "schema", approved: true)
initialize_w = Word.create!(content: "initialize", approved: true)
joiner = Word.create!(content: "joiner", approved: true)
attribute = Word.create!(content: "attribute", approved: true)
active_record = Word.create!(content: "active record", approved: true)
rake = Word.create!(content: "rake", approved: true)
gem = Word.create!(content: "gem", approved: true)
gemfile = Word.create!(content: "gemfile", approved: true)
crud = Word.create!(content: "crud", approved: true)
mass_assignment = Word.create!(content: "mass assignment", approved: true)
rollback = Word.create!(content: "rollback", approved: true)
migration = Word.create!(content: "migration", approved: true)
database_table = Word.create!(content: "database table", approved: true)
iterate = Word.create!(content: "iterate", approved: true)
bundle = Word.create!(content: "bundle", approved: true)
faker = Word.create!(content: "faker", approved: true)
tty_prompt = Word.create!(content: "tty prompt", approved: true)
seed = Word.create!(content: "seed", approved: true)
byebug = Word.create!(content: "byebug", approved: true)
action = Word.create!(content: "action", approved: true)
show_action = Word.create!(content: "show action", approved: true)
index_action = Word.create!(content: "index action", approved: true)
new_action = Word.create!(content: "new action", approved: true)
edit_action = Word.create!(content: "edit action", approved: true)
create_action = Word.create!(content: "create action", approved: true)
destroy_action = Word.create!(content: "destroy action", approved: true)
update_action = Word.create!(content: "update action", approved: true)
path_helpers = Word.create!(content: "path helpers", approved: true)
html_helpers = Word.create!(content: "HTML helpers", approved: true)
partials = Word.create!(content: "partials", approved: true)
layouts = Word.create!(content: "layouts", approved: true)
validations = Word.create!(content: "validations", approved: true)
link_to_w = Word.create!(content: "link_to", approved: true)
button_to_w = Word.create!(content: "button_to", approved: true)
collection_select_w = Word.create!(content: "collection_select", approved: true)
redirect = Word.create!(content: "redirect", approved: true)
render_ruby = Word.create!(content: "render (Ruby)", approved: true)
bcrypt = Word.create!(content: "bcrypt", approved: true)
named_scope = Word.create!(content: "named scope", approved: true)
guard_clause = Word.create!(content: "guard clause", approved: true)
associations = Word.create!(content: "associations", approved: true)
flash_hash = Word.create!(content: "flash hash", approved: true)
private_method = Word.create!(content: "private method", approved: true)
cli = Word.create!(content: "cli", approved: true)
setter_method = Word.create!(content: "setter_method", approved: true)
getter_method = Word.create!(content: "getter_method", approved: true)
reader_method = Word.create!(content: "reader_method", approved: true)
writer_method = Word.create!(content: "writer_method", approved: true)
object_oriented_programming = Word.create!(content: "object oriented programming", approved: true)
functional_programming = Word.create!(content: "functional programming", approved: true)
erd = Word.create!(content: "erd", approved: true)
entity_relationship_diagram = Word.create!(content: "Entity Relationship Diagram", approved: true)
domain_model = Word.create!(content: "domain model", approved: true)
one_to_many_relationship = Word.create!(content: "one-to-many relationship", approved: true)
many_to_many_relationship = Word.create!(content: "many_to_many relationship", approved: true)
json = Word.create!(content: "json", approved: true)
api = Word.create!(content: "api", approved: true)
get_request = Word.create!(content: "get request", approved: true)
put_request = Word.create!(content: "put request", approved: true)
patch_request = Word.create!(content: "patch request", approved: true)
delete_request = Word.create!(content: "delete request", approved: true)
post_request = Word.create!(content: "post request", approved: true)
web_scraping = Word.create!(content: "web scraping", approved: true)
server = Word.create!(content: "server", approved: true)
client = Word.create!(content: "client", approved: true)
uri = Word.create!(content: "uri", approved: true)
url = Word.create!(content: "url", approved: true)
rest = Word.create!(content: "rest", approved: true)
sessions = Word.create!(content: "sessions", approved: true)
cookies = Word.create!(content: "cookies", approved: true)
debugging = Word.create!(content: "debugging", approved: true)
crud = Word.create!(content: "crud", approved: true)
function = Word.create!(content: "function (JS)", approved: true)
callback = Word.create!(content: "callback (JS)", approved: true)
hoisting = Word.create!(content: "hoisting", approved: true)
function_expression = Word.create!(content: "function expression", approved: true)
function_invocation = Word.create!(content: "function invocation", approved: true)
function_definition = Word.create!(content: "function definition", approved: true)
debugger = Word.create!(content: "debugger", approved: true)
console_log = Word.create!(content: "console.log", approved: true)
let = Word.create!(content: "let", approved: true)
const = Word.create!(content: "const", approved: true)
var = Word.create!(content: "var", approved: true)
variable = Word.create!(content: "variable (JS)", approved: true)
array = Word.create!(content: "array (JS)", approved: true)
object = Word.create!(content: "object (JS)", approved: true)
dom_w = Word.create!(content: "DOM", approved: true)
package = Word.create!(content: "package", approved: true)
npm = Word.create!(content: "npm", approved: true)
node = Word.create!(content: "node", approved: true)
document = Word.create!(content: "document", approved: true)
query_selector = Word.create!(content: "querySelector", approved: true)
get_element_by_id = Word.create!(content: "getElementById", approved: true)
query_selector_all = Word.create!(content: "querySelectorAll", approved: true)
local_storage = Word.create!(content: "localStorage", approved: true)
anonymous_function = Word.create!(content: "anonymous function", approved: true)
first_class_functions = Word.create!(content: "first-class functions", approved: true)
event_listener = Word.create!(content: "eventListener", approved: true)
ecma = Word.create!(content: "ecma", approved: true)
arrow_function = Word.create!(content: "arrow function", approved: true)
vanilla_js = Word.create!(content: "vanilla js", approved: true)
js = Word.create!(content: "JavaScript", approved: true)
fetch = Word.create!(content: "fetch", approved: true)
memoization = Word.create!(content: "memoization", approved: true)
component = Word.create!(content: "component", approved: true)
props = Word.create!(content: "props", approved: true)
state = Word.create!(content: "state", approved: true)
jsx = Word.create!(content: "jsx", approved: true)
extends = Word.create!(content: "extends", approved: true)
import = Word.create!(content: "import", approved: true)
export = Word.create!(content: "export", approved: true)
hooks = Word.create!(content: "hooks", approved: true)
react = Word.create!(content: "react", approved: true)
context = Word.create!(content: "context", approved: true)
src = Word.create!(content: "src", approved: true)
manifest = Word.create!(content: "manifest", approved: true)
lifecycle_methods = Word.create!(content: "lifecycle methods", approved: true)
constructor = Word.create!(content: "constructor", approved: true)
render_react = Word.create!(content: "render (React)", approved: true)
component_did_mount = Word.create!(content: "componentDidMount", approved: true)
should_component_update = Word.create!(content: "shouldComponentUpdate", approved: true)
component_did_catch = Word.create!(content: "componentDidCatch", approved: true)
component_will_unmount = Word.create!(content: "componentWillUnmount", approved: true)
use_state = Word.create!(content: "useState", approved: true)
use_effect = Word.create!(content: "useEffect", approved: true)
use_ref = Word.create!(content: "useRef", approved: true)

# puts "creating favorites..."
# e_mvc = Favorite.create!(user: eric, word: mvc)
# e_response = Favorite.create!(user: eric, word: response)
# e_request = Favorite.create!(user: eric, word: request)
# s_a_s = Favorite.create!(user: sylwia, word: angry_squid)
# s_i_c_c = Favorite.create!(user: sylwia, word: ice_cream_cone)
# s_s_p = Favorite.create!(user: sylwia, word: strong_params)
# a_i_c_c = Favorite.create!(user: annie, word: ice_cream_cone)
# a_s_p = Favorite.create!(user: annie, word: strong_params)


puts "creating definitions..."
# read_more attribute example:
angry_squid_def = Definition.create!(user: User.first, approved: true, content: "'<%= %>': angry squid shoots ink or evaluates ruby code and prints", word: angry_squid, read_more_url: "https://dev.to/sylwiavargas/which-erb-tag-should-i-use-53f1", read_more_at: "Dev blog")
ice_cream_cone_def = Definition.create!(user: User.first, approved: true, content: "'<% %>': Ice cream cone evaluates ruby code but does not print", word: ice_cream_cone, read_more_url: "https://dev.to/sylwiavargas/which-erb-tag-should-i-use-53f1", read_more_at: "Dev blog")

# meme example:
model_def = Definition.create!(user: User.first, approved: true, content: "A blueprint for creating instances; manages data in the database", word: model, meme_url: "https://github.com/sylwiavargas/schedules/blob/master/mod1-lectures/08-Classes-Instances-Attributes/dog-rb-2.png?raw=true", meme_alt_text: "a personified Ruby assembles a dog following an Ikea-like manual")

# other available definitions:
angry_squid_def = Definition.create!(user: User.first, approved: true, content: "'<%= %>': angry squid shoots ink or evaluates ruby code and prints", word: angry_squid)
controller_def = Definition.create!(user: User.first, approved: true, content: "Communicates between the model (database) and views (user interface/website/browser)", word: controller)
controller_def_2 = Definition.create!(user: User.first, approved: true, content: "A controller is the waiter; between the model and the view. It determines what the user will be doing/seeing based on the request", word: controller)
ice_cream_cone_def = Definition.create!(user: User.first, approved: true, content: "'<% %>': Ice cream cone evaluates ruby code but does not print", word: ice_cream_cone)
model_def = Definition.create!(user: User.first, approved: true, content: "A blueprint for creating instances; manages data in the database", word: model)
module_word_def_js = Definition.create!(user: User.first, approved: true, content: "Your personal toolbox of functions that can be called upon instead of repeating them in your code", word: module_word)
module_word_def_ruby = Definition.create!(user: User.first, approved: true, content: "Your personal toolbox of methods that can be called upon instead of repeating them in your code", word: module_word)
mvc_def = Definition.create!(user: User.first, approved: true, content: "Model-View-Controller, its a design pattern for building web applications  (chef, waiter, serving/dining table)", word: mvc)
params_def = Definition.create!(user: User.first, approved: true, content: "A hash with all the spicy user's input from the url input field or forms", word: params)
request_def = Definition.create!(user: User.first, approved: true, content: "Client sends a requests to get information to/from the server", word: request)
response_def = Definition.create!(user: User.first, approved: true, content: "What server sends back to the user (client) after it processes the data", word: response)
route_def = Definition.create!(user: User.first, approved: true, content: "A route is a path that allows you access a page of your preference; it connects with an appropriate method and renders an appropriate view", word: route)
strong_params_def = Definition.create!(user: User.first, approved: true, content: "Rails safeguard against the meanies of the world -- it's a nested hash", word: strong_params)
view_def = Definition.create!(user: User.first, approved: true, content: "The HTML files (what is displayed on the browser)", word: view)

puts "📚 📚 📚  let the show begin 📚 📚 📚 "
