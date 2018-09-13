class AppointmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :new]

  def index
    @appointments =Appointment.all
  end

  def new
    @appointment = Appointment.new
    @appointment_types = AppointmentType.all
    #save end_date by adding duration to the start date
    #verify the availibility of the period of time
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.user = current_user
    @appointment.end_date = @appointment.start_date + 1.hour
    if @appointment.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
    def appointment_params
      params.require(:appointment).permit(:start_date, :comment, :user, :appointment_type_id)
    end
end
