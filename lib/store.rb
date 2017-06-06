class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {greater_than: 0}
  validate :atleast_male_female
  before_destroy :check_employees
  def atleast_male_female
    if (!mens_apparel) && (!womens_apparel)
      errors.add(:mens_apparel, "has to be atleast male or female")
    end
  end

  def check_employees
    if employees.any?
      errors.add(:employees, "cannot delete a store that has employyees")
      false
    end

  end
end
