class Doctor
    attr_accessor :name
    @@all = []
    def initialize(name)
        @name = name
        save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.doctor == self
            appointment
        end
    end

    def new_appointment(patient, date)
        Appointment.new(self, patient, date)
    end

    def patients
        Appointment.all.map do |appointment|
            appointment.doctor == self
            appointment.patient
        end
    end
end