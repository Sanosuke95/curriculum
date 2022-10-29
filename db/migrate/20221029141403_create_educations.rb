class CreateEducations < ActiveRecord::Migration[7.0]
  def change
    create_table :educations do |t|
      t.integer :resume_id
      t.string :title
      t.date :begin_date
      t.date :end_date
      t.text :location
      t.text :body

      t.timestamps
    end
  end
end
