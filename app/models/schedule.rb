class Schedule < ApplicationRecord
  belongs_to :appointment
  belongs_to :days_off
end
