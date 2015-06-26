class AddPersonIdToSaActionItems < ActiveRecord::Migration
  def change

change_table :sa_action_items do |t|
  t.references :person
end

  end
end
