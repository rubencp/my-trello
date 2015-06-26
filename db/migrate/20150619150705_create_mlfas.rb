class CreateMlfas < ActiveRecord::Migration
  def change
    create_table :mlfas do |t|
      t.text :description
      t.text :name

      t.timestamps null: false
    end
  end
end
