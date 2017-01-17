class Subgroup < ApplicationRecord
  belongs_to :group

  accepts_nested_attributes_for :group
end
