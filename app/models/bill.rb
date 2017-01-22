class Bill < ApplicationRecord
  belongs_to :subgroup

  scope :by_year, lambda { |year| where('extract(year from due_date) = ?', year) }
  scope :by_month, lambda { |month| where('extract(month from due_date) = ?', month) }
end
