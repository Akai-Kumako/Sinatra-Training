ActiveRecord::Base.establish_connection('sqlite3:model.db')

class Card < ActiveRecord::Base
  validates :word, uniqueness: true
end
