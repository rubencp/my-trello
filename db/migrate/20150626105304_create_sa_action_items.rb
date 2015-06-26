class CreateSaActionItems < ActiveRecord::Migration
  def change
    create_table :sa_action_items do |t|
      t.string :title
      t.text :description
      t.string :status
      t.text :remark
      t.string :link_ulr

      t.timestamps null: false
    end

  end
end
