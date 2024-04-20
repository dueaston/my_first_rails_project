class User < ApplicationRecord
  
  validate :name_cannot_contain_numbers

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true


  before_create :downcase_email

  has_one :profile
  has_many :posts

  private

  def name_cannot_contain_numbers
    if name.present? && name.match?(/\d/)
      errors.add(:name, "cannot contain numbers")
    end
  end

  def downcase_email
    self.email = email.downcase
  end
end