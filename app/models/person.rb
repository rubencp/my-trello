class Person < ActiveRecord::Base
  belongs_to :person_type
  has_many :sa_action_items
  has_many :projects
end
