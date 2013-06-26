class Profile < ActiveRecord::Base
  attr_accessible :bio, :tagline, :user_id

  validates :user_id, presence: true, uniqueness: true

  belongs_to :user
  has_many :skills, :through => :user
  has_one :calendar, :through => :user

  def tags
    tag_list = {}
    excluded_words = "then time times reqd first"
    
    self.skills.each do |skill|
      words = skill.description.downcase.gsub(/\W+/, ' ').split(' ').select{|w| w.length > 3} - excluded_words.split(' ')
      words.each do |word|
        if tag_list.has_key?(word)
          tag_list[word] += 1
        else
          tag_list[word] = 1
        end
      end
    end  
    return tag_list.sort_by {|k,v| v}.reverse
  end

  def has_profile?
    Profile.find_by_user_id(self.user_id)
  end

  def has_calendar?
    Calendar.find_by_user_id(self.user_id)
  end

end
