class Doctor 
    @@all = []
    attr_accessor :name

    def initialize name
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment patient, date
        Appointment.new(patient, date, self)
    end

    def appointments
        Appointment.all.select {|appointments| appointments.doctor == self}
    end

    def patients
        patients = []
        doctorAppointments = appointments
        doctorAppointments.each do |appointment|
            patients << appointment.patient
        end
        patients
    end

end