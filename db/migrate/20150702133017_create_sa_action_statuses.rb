class CreateSaActionStatuses < ActiveRecord::Migration
  def change
    create_table :sa_action_statuses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
