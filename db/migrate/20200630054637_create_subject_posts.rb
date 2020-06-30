class CreateSubjectPosts < ActiveRecord::Migration[6.0]
  def change
    create_table :subject_posts do |t|
      t.integer :user_id
      t.integer :subject_id
      t.string :content

      t.timestamps
    end
  end
end
