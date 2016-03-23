class CreateExperiences < ActiveRecord::Migration
  def change
    create_table :experiences do |t|
      t.string :workplace
      t.string :position
      t.string :location
      t.text :description
      t.string :date

      t.timestamps null: false
    end
  end
end
