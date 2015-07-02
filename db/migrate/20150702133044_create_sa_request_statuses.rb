class CreateSaRequestStatuses < ActiveRecord::Migration
  def change
    create_table :sa_request_statuses do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
