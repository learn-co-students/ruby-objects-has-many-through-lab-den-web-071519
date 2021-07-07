class Patient
    attr_accessor :name
    @@all = []

    def initialize name
        @name = name
        @@all << self
    end

    def new_appointment doctor, date
        Appointment.new(self, date, doctor)
    end

    def appointments
        Appointment.all.select {|appointment| appointment.patient == self}
    end

    def self.all
        @@all
    end

    def doctors
        doctors = []
        appArray = appointments
        appArray.each do |appointment|
            doctors << appointment.doctor
        end
        doctors
    end

end