class Employee < ActiveRecord::Base
  belongs_to :store
  validates_presence_of :first_name, :last_name
  validates :hourly_rate, inclusion: 40..200

  before_save :set_password

  private
  def set_password
    # update_attribute(:password, (0...8).map { (65 + rand(26)).chr }.join)
    self.password = (0...8).map { (65 + rand(26)).chr }.join
  end

end
