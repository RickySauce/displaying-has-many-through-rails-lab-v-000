class Appointment < ActiveRecord::Base
  belongs_to :patient
  belongs_to :doctor

  def datetime
    "#{self.appointment_datetime.strftime("%B %d, %Y")} at #{self.appointment_datetime.strftime("%k:%M")}"
  end

end
