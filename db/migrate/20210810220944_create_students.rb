class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :name
      t.string :lastname
      t.string :email
      t.string :password_digest
      
      t.timestamps
    end
  end
end
