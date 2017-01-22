class Group < ApplicationRecord
  belongs_to :user
  has_many :subgroups

  def total_bills
  	total = 0
  	subgroups.each do |subgroup|
  		total += subgroup.total_bills
  	end
  	total
  end
end
