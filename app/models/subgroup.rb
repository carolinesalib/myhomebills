class Subgroup < ApplicationRecord
  belongs_to :group
  has_many :bills
  accepts_nested_attributes_for :group

  def total_bills
  	bills.sum(:value)
  end
end
