require 'sqlite3'

db = SQLite3::Database.new 'test.db'

# db.execute 'create table Students (id integer not null, name varchar(20) , password varchar(64) null)'

db.execute "insert into Students (id,name,password) values (2, 'admin', 'admin')"