class Transfer < ApplicationRecord
  belongs_to :user

  validates :sum, :numericality => {:greater_than => 0}
end
