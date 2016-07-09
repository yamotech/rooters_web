class CreateArenas < ActiveRecord::Migration
  def change
    create_table :arenas do |t|
      t.string :arena_name
      t.string :address
      t.float :latitude
      t.float :longitude
      t.string :url
      t.float :distance

      t.timestamps null: false
    end
  end
end
