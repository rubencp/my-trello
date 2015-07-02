class AddPersonToProjects < ActiveRecord::Migration
  def change
    add_reference :projects, :person, index: true
    add_foreign_key :projects, :people
  end
end
