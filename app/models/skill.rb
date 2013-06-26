class Skill < ActiveRecord::Base
  attr_accessible :category, :description, :name, :user_id
  validates :name, presence: { message: "Skill name cannot be blank." }
  validates :category, presence: { message: "Category cannot be blank." }

  belongs_to :user

end
