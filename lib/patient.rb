class Patient
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

    def new_appointment(doctor, date)
        Appointment.new(doctor, self, date)
    end

    def doctors
        Appointment.all.collect do |appointment|
            appointment.patient == self
            appointment.doctor
        end
    end

    def appointments
        Appointment.all.select do |appointment|
            appointment.patient == self
            appointment
            # binding.pry
        end
    end
end