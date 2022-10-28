class CreateSkills < ActiveRecord::Migration[7.0]
  def change
    create_table :skills do |t|
      t.integer :resume_id
      t.string :title
      t.integer :level

      t.timestamps
    end
  end
end
