class Calendar < ActiveRecord::Base
  attr_accessible :info, :user_id

  validates :user_id, presence: true, uniqueness: true

  belongs_to :user

end
