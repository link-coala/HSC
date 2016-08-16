class CreateCvs < ActiveRecord::Migration
  def change
    create_table :cvs do |t|
      t.string :picture
      t.string :name
      t.string :lastname
      t.string :job

      t.timestamps null: false
    end
  end
end
