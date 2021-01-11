class Appointment < ApplicationRecord
    belongs_to :patient
    belongs_to :doctor

    def doctor_name
        self.doctor.name
    end

    def patient_name
        self.patient.name
    end

    def app_date
        self.appointment_datetime.strftime("%B %d, %Y at %R")
    end

end
