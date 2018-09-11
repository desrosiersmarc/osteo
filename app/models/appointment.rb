class Appointment < ApplicationRecord
  belongs_to :user
  belongs_to :appointment_type
  has_many :status_histories
end
