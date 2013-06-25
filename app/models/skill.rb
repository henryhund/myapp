class Skill < ActiveRecord::Base
  attr_accessible :category, :description, :name, :user_id

  belongs_to :user

  def tags
    description = self.description
    @tags = description.split(' ') 
  end

end
