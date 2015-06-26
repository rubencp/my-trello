class CreateMlfbs < ActiveRecord::Migration
  def change
    create_table :mlfbs do |t|

      t.timestamps null: false
    end
  end
end
