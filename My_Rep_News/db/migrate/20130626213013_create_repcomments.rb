class CreateRepcomments < ActiveRecord::Migration
  def change
    create_table :repcomments do |t|
      t.string :bioguide_id
      t.string :repcomment

      t.timestamps
    end
  end
end
