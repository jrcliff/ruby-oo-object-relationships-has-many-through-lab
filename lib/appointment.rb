class Appointment
    @@all = []
    attr_accessor :patient, :date, :doctor
    def initialize(doctor, patient, date)
        @doctor = doctor
        @patient = patient
        @date = date 
        save
    end

    def self.all
        @@all
    end

    def save
        self.class.all << self
    end

    
        
        
    
end