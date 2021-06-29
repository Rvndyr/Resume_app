class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password_digest
      t.string :phone_number
      t.string :bio
      t.string :linkedin
      t.string :twitter_handle
      t.string :website
      t.string :resume_url
      t.string :github
      t.string :photo

      t.timestamps
    end
  end
end
