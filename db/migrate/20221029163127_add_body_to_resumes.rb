class AddBodyToResumes < ActiveRecord::Migration[7.0]
  def change
    add_column :resumes, :body, :text
  end
end
