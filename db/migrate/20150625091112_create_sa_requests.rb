class CreateSaRequests < ActiveRecord::Migration
  def change
    create_table :sa_requests do |t|
      t.string :title
      t.string :topic
      t.string :status
      t.string :decision
      t.string :applicant
      t.string :sa_incharge
      t.string :impacted_projects
      t.string :sub_projects
      t.string :mechanical_interfaces

      t.timestamps null: false
    end
  end
end
