class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.string :email
      t.string :ssid
      t.references :person_type, index: true

      t.timestamps null: false
    end
    add_foreign_key :people, :person_types
  end
end
