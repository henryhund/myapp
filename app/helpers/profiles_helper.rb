module ProfilesHelper
  def get_skills
    @skills = @profile.skills
  end
  def get_calendars
    # @calendars = @profile.user.calendar
    @calendar = @profile.calendar
  end
end
