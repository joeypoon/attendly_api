class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string :name
      t.string :school_identifier

      t.timestamps null: false
    end
  end
end
