class Subgroup < ApplicationRecord
  belongs_to :group
  has_many :builds
  accepts_nested_attributes_for :group

  def total_builds
  	builds.sum(:value)
  end
end
