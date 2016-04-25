# Community Learning

# require gems
require 'sqlite3'

# create sqLite3 database
db = SQLite3::Database.new("content.db")
db.results_as_hash = true

create_table_cmd = <<-SQL
  CREATE TABLE IF NOT EXISTS problems(
    id INTEGER PRIMARY KEY,
    type VARCHAR (255),
    problem VARCHAR (255),
    solution VARCHAR (255),
    user_creator VARCHAR (255)
    )
SQL

db.execute(create_table_cmd)

def create_problem(db, type, problem, solution, user_creator)
  db.execute("INSERT INTO problems (type, problem, solution, user_creator) VALUES (?, ?, ?, ?)", [type, problem, solution, user_creator])
end


def update_type(db, id, type)
    db.execute("UPDATE problems SET type=? WHERE id=?", [type, id])
end


def update_user(db, id, user_creator)
    db.execute("UPDATE problems SET user_creator=? WHERE id=?", [user_creator, id])
end


def delete(db, id)
    db.execute("DELETE FROM problems WHERE id=?", [id])
end



show_problems = <<-DISPLAYSQL
    SELECT * FROM problems
    DISPLAYSQL


sort_type = <<-SORTSQL
    SELECT * FROM problems ORDER BY type
    SORTSQL


sort_user = <<-SORTSQL
    SELECT * FROM problems ORDER BY user_creator
    SORTSQL


# create_problem(db, 'add', '3+3', '6', 'aap1')
# create_problem(db, 'subtract', '3-3', '0', 'aap1')
# create_problem(db, 'multiply', '3*3', '9', 'aap1')
# create_problem(db, 'divide', '3/3', '1', 'aap1')

# create_problem(db, 'add', '10+1', '11', 'samp')
# create_problem(db, 'subtract', '7-2', '5', 'samp')
# create_problem(db, 'multiply', '4*5', '20', 'samp')
# create_problem(db, 'divide', '15/1', '15', 'samp')


puts db.execute(show_problems)
puts db.execute(sort_user)
puts db.execute(sort_type)




# db.execute("INSERT INTO problems (type, problem, solution, user_creator) VALUES ('add', '2+2', '4', 'cprakti')")
# db.execute("INSERT INTO problems (type, problem, solution, user_creator) VALUES ('subtract', '2-2', '0', 'cprakti')")
# db.execute("INSERT INTO problems (type, problem, solution, user_creator) VALUES ('multiply', '2*2', '4', 'cprakti')")
# db.execute("INSERT INTO problems (type, problem, solution, user_creator) VALUES ('divide', '2/2', '1', 'cprakti')")

