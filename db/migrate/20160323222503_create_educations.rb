class CreateEducations < ActiveRecord::Migration
  def change
    create_table :educations do |t|
      t.string :school
      t.string :degree
      t.string :location
      t.string :date
      t.text :description

      t.timestamps null: false
    end
  end
end
