class Subgroup < ApplicationRecord
  belongs_to :group
  has_many :bills
  accepts_nested_attributes_for :group

  def total_bills(month, year)
  	bills.where('extract(year from due_date) = ? AND extract(month from due_date) = ?', year, month).sum(:value)
  end
end
