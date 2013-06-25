class CreateGrades < ActiveRecord::Migration
  def change
    create_table :grades do |t|
    #saying that this user is giving this grade to this represenative
      t.references :user 
      t.string :bioguide_id
      t.integer :grade
      t.timestamps
    end
  end
end
