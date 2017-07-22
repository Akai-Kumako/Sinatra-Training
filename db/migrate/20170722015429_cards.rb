class Cards < ActiveRecord::Migration[5.1]
	def change
		create_table :cards do |t|
			t.string :word
			t.text :description
			t.timestamps
		end
	end
end
