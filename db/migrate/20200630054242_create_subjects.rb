class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string :name
      t.integer :facalty_id
      t.integer :department_id
      t.integer :semester_id
      t.string :syllabus_url
      t.string :text_book_url

      t.timestamps
    end
  end
end
