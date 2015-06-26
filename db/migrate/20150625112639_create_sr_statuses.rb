class CreateSrStatuses < ActiveRecord::Migration
  def change
    create_table :sr_statuses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
