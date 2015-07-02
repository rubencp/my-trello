class AddTypeToSaActionItem < ActiveRecord::Migration
  def change
    add_reference :sa_action_items, :sa_action_type, index: true
    add_foreign_key :sa_action_items, :sa_action_types
  end
end
