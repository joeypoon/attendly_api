class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string :name
      t.string :email
      t.string :school_identifier
      t.string :phone_number
      t.string :phone_identifier, array: true, default: []
      t.string :password_digest

      t.timestamps null: false
    end
  end
end