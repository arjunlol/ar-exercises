class Employee < ActiveRecord::Base
  belongs_to :store
  validates_presence_of :first_name, :last_name
  validates :hourly_rate, inclusion: 40..200


end
