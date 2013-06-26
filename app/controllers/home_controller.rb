class HomeController < ApplicationController
  def index
    @users = User.all
    if current_user
      @appointments = Appointment.where("host_id=#{current_user.id} OR attendee_id=#{current_user.id}")
    end
    #(:all, conditions: ["host_id -"])

    #find_by_host_id(current_user.id)
    #@appointments.push(Appointment.find_by_attendee_id(current_user.id))
  end
  def loggedin
    redirect_to dashboard_path
  end
end
