class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments

    def name_and_appointment_count
        "Name: #{self.name} Number of Appointments: #{self.appointments.count}"
    end

end
