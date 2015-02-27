

# this is where you should use an ActiveRecord migration to

class CreateWords < ActiveRecord::Migration
  def change
    create_table :words do |t|
      t.string :word, null: false
    end
  end
end