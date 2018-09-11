class AppointmentsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index]

  def index
    @appointments =Appointment.all
  end
end
