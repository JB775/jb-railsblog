class CreateSamplexes < ActiveRecord::Migration
  def change
    create_table :samplexes do |t|
      t.string :fname
      t.string :lname
      t.string :email

      t.timestamps null: false
    end
  end
end
