# require gems
require 'sinatra'
require 'sqlite3'

db = SQLite3::Database.new("students.db")
db.results_as_hash = true

# write a basic GET route
# add a query parameter
# GET /
get '/' do
  all = db.execute("SELECT * FROM students")
  "#{all}"
end

# write a GET route with
# route parameters
get '/about/:person' do
  person = params[:person]
  "#{person} is a programmer, and #{person} is learning Sinatra."
end

get '/:person_1/loves/:person_2' do
  "#{params[:person_1]} loves #{params[:person_2]}"
end

# write a GET route that retrieves
# all student data
get '/students' do
  students = db.execute("SELECT * FROM students")
  response = ""
  students.each do |student|
    response << "ID: #{student['id']}<br>"
    response << "Name: #{student['name']}<br>"
    response << "Age: #{student['age']}<br>"
    response << "Campus: #{student['campus']}<br><br>"
  end
  response
end

# write a GET route that retrieves
# a particular student

get '/students/:id' do
  student = db.execute("SELECT * FROM students WHERE id=?", [params[:id]])[0]
  student.to_s
end


##############################################
# Release 0: Add Routes

get '/contact' do
  address = params[:address]
  "The address is 418 Wall St. New York, NY 10005."
end

get '/great_job' do
  name = params[:name]
  if name
    "Good job, #{name}!"
  else
    "Good job!"
  end
end

get '/add/:first_num/:second_num' do
  first_num = params[:first_num]
  second_num = params[:second_num]
  sum = first_num.to_i + second_num.to_i
  "#{first_num} plus #{second_num} equals #{sum}."
end

##############################################
# Release 1:

=begin

Is Sinatra the only web app library in Ruby? What are some others?

Ruby on Rails
  - Full-stack web framework optimized for programmer happiness and sustainable productivity.  It encourages beautiful code by favoring convention over configuration.

Rack
  - Provides a minimal, modular and adaptable interface for developing web applications in Ruby.  By wrapping HTTP requests and responses in the simplest way possible, it unifies and distills the API for web servers, web frameworks, and software in between (the so-called middleware) into a single method call.

Sinatra
  - Sinatra is a DSL for quickly creating web applications in Ruby with minimal effort.

Padrino
  - The Godfather of Sinatra provides a full-stack agnostic framework on top of Sinatra.

Cramp
  - Cramp is a framework for developing asynchronous web applications.

Cuba
  - Cuba is a microframework for web applications

https://www.ruby-toolbox.com/categories/web_app_frameworks



Are SQLite and the sqlite3 gem your only options for using a database with Sinatra? What are some others?

- Models are a common pattern for abstracting your data out into an Object-relational mapper or other low-level interface for data transport.

- Active Record
- Couchdb
- Data Mapper
- Mongo
- Ohm
- Sequel



What is meant by the term web stack?

A Web stack is the collection of software required for Web development. At a minimum, a Web stack contains an operating system (OS), a programming language, database software and a Web server. LAMP is one commonly used Web stack.

LAMP is one commonly used Web stack. It uses Linux as the operating system, Apache as the Web server, MySQL as the relational database management system and PHP as the object-oriented scripting language.


https://www.rubysteps.com/articles/2014/so-you-want-to-become-a-full-stack-developer/


=end