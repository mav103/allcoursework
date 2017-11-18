class Ward < ActiveRecord::Base
  has_many :surveys, dependent: :destroy

  validates :department, presence:true, length: {maximum: 128}
  validates :floor, presence:true, numericality:
  {only_integer: true, greater_than_or_equal_to: 1}
  validates :capacity, presence:true, numericality:
  {only_integer: true, greater_than_or_equal_to: 1}
  validates :number, presence:true, uniqueness:true, numericality:
  {only_integer: true, greater_than_or_equal_to: 1}
end
