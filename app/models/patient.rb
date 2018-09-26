class Patient < ActiveRecord::Base
  has_many :appointments
  has_many :doctors, through: :appointments

  def number_of_appointments
    appointments.length
  end
end
