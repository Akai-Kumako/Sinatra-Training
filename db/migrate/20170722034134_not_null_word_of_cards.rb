class NotNullWordOfCards < ActiveRecord::Migration[5.1]
  def change
    change_column :cards, :word, :string, null: false  
  end
end
