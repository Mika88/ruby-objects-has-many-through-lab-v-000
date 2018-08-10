class Patient
  @@all = []
  attr_accessor :name
  def initialize(name)
    @name = name
    @@all << self
  end
  def self.all
    @all
  end
  def new_appointment(date, doctor)
    Appointment.new(self, doctor, date)
  end
  def appointments
    Appointment.patient.select{|appointment| appointment.patient == self}
  end
  def doctors
    self.appointments{|appointment| appointment.doctor}
  end
end
