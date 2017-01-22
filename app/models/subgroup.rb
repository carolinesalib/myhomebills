class Subgroup < ApplicationRecord
  belongs_to :group
  has_many :bills
  accepts_nested_attributes_for :group

  def total_bills(month, year)
  	bills.by_month(month).by_year(year).sum(:value)
  end
end
