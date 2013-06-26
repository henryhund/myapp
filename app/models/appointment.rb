class Appointment < ActiveRecord::Base
  attr_accessible :attendee_id, :confirmed, :host_id, :time

  has_many :users, foreign_key: :host_id
  has_many :users, foreign_key: :attendee_id
  
end
