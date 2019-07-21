class Doctor
    attr_reader :name

    @@all = []

    def initialize name
        @name = name
        Doctor.all << self
    end

    def new_appointment patient, date
        appointment = Appointment.new(date, patient, self)
    end

    def appointments
        Appointment.all.select{|appointment| appointment.doctor == self}
    end

    def patients
        appointments.collect{|appointment| appointment.patient}
    end

    def self.all
        @@all
    end

end