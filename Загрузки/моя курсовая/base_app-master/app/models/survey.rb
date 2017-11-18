class Survey < ActiveRecord::Base
  belongs_to :result
  belongs_to :card
  belongs_to :ward
  validates :cause, presence:true, length: {maximum: 128}
  validates :entered, presence:true
  validates :ended, presence:true
  validates :epicrisis, presence:true, length: {maximum: 128}

  accepts_nested_attributes_for :ward,
    allow_destroy: true

  accepts_nested_attributes_for :result,
    allow_destroy: true

  accepts_nested_attributes_for :card,
    allow_destroy: true

end
