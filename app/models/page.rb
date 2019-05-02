class Page < ApplicationRecord
  validates :companyname , presence: true
  validates :tool , presence: true
  validates :property , presence: true
  validates :people , presence: true
  validates :goal , presence: true
  validates :budget , presence: true
  validates :start , presence: true
  validates :weekday , presence: true
  validates :examination , presence: true
  validates :aid , presence: true
  validates :lastpassrate , presence: true

  validates :goal, inclusion: { in: 0..100 }
  validates :start, inclusion: { in: 1..12 }
  validates :lastpassrate, inclusion: { in: 0..100 }

  before_save do
  self.tool.gsub!(/[\[\]\"]/, "") if attribute_present?("tool")
  end

  before_save do
  self.property.gsub!(/[\[\]\"]/, "") if attribute_present?("property")
  end

  before_save do
  self.weekday.gsub!(/[\[\]\"]/, "") if attribute_present?("weekday")
  end

  before_save do
  self.aid.gsub!(/[\[\]\"]/, "") if attribute_present?("aid")
  end

  enum examination: { true: 0, false: 1}
  enum status: { yet: 0, operating: 1}
end
