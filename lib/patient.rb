class Patient
    attr_reader :name

    @@all = []

    def initialize name
        @name = name
        Patient.all << self
    end

    def new_appointment doctor, date
        appointment = Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select{|appointment| appointment.patient}
    end

    def doctors
        appointments.collect{|appointment| appointment.doctor}
    end

    def self.all
        @@all
    end

end