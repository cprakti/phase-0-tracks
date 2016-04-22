# Community Learning

# require gems
require 'sqlite3'
require 'faker'

# create sqLite3 database
db = SQLite3::Database.new("content.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS problems(
    id INTEGER PRIMARY KEY,
    type INT,
    problem VARCHAR (255),
    solution VARCHAR (255),
    user_creator INT,
    FOREIGN KEY (type) REFERENCES types(id),
    FOREIGN KEY (user_creator) REFERENCES users(id)
    )
SQL

create_types_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS types(
    id INTEGER PRIMARY KEY,
    type_of_problem VARCHAR (255)
    )
SQL

create_users_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS users(
    id INTEGER PRIMARY KEY,
    user_name VARCHAR (255)
    )
SQL

db.execute(create_table_cmd)
db.execute(create_types_table_cmd)
db.execute(create_users_table_cmd)


db.execute("INSERT INTO problems (type, problem, solution, user_creator) VALUES (2, '2-2', '0', 1)")
db.execute("INSERT INTO problems (type, problem, solution, user_creator) VALUES (3, '2*2', '4', 1)")
db.execute("INSERT INTO problems (type, problem, solution, user_creator) VALUES (4, '2/2', '1', 1)")

db.execute("INSERT INTO types (type_of_problem) VALUES ('Addition')")
db.execute("INSERT INTO types (type_of_problem) VALUES ('Subtraction')")
db.execute("INSERT INTO types (type_of_problem) VALUES ('Multiplication')")
db.execute("INSERT INTO types (type_of_problem) VALUES ('Division')")

db.execute("INSERT INTO users (user_name) VALUES ('cprakti')")