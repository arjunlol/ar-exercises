class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {greater_than: 0}
  validate :atleast_male_female

  def atleast_male_female
    if (!mens_apparel) && (!womens_apparel)
      errors.add(:mens_apparel, "has to be atleast male or female")
    end
  end
end
