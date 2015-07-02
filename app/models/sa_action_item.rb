class SaActionItem < ActiveRecord::Base
  belongs_to :person
  belongs_to :sa_action_type

  def type
  	unless self.sa_action_type.nil?
  		self.sa_action_type.name
  	end
  end

end
