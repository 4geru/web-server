ActiveRecord::Base.establish_connection("sqlite3:db/development.db")

class Users < ActiveRecord::Base
end