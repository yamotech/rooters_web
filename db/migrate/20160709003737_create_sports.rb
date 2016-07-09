class CreateSports < ActiveRecord::Migration
  def change
    create_table :sports do |t|
      t.integer :sport_category_id
      t.string :sport_name_ja
      t.string :sport_name_en
      t.string :sport_type
      t.string :sport_description
      t.integer :stadium_id
      t.date :sport_date
      t.integer :disabled

      t.timestamps null: false
    end
  end
end
