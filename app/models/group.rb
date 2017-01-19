class Group < ApplicationRecord
  belongs_to :user
  has_many :subgroups

  def total_builds
  	total = 0
  	subgroups.each do |subgroup|
  		total += subgroup.total_builds
  	end
  	total
  end
end
