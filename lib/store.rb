class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {greater_than: 0}
  validate :atleast_male_female

  def atleast_male_female
    if male = true || female = true
      true
    else
      false
    end
  end
end
