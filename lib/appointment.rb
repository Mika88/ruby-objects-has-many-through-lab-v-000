class Appointment
  @@all = []
  attr_accessor :patient, :docter, :date
  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end
  def self.all
    @@all
  end
end
