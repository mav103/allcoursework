class Result < ActiveRecord::Base
  has_many :surveys, dependent: :destroy

  validates :conclusion, presence:true, length: {maximum: 128}
  validates :title, presence:true, length: {maximum: 128}
  validates :rdate, presence:true
  validates :appointment, presence:true, length: {maximum: 128}
  validates :causes, presence:true, length: {maximum: 128}
  validates :first_inspection, presence:true, length: {maximum: 128}
  validates :results, presence:true, length: {maximum: 128}
end
