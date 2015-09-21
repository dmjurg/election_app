class Voter < ActiveRecord::Base
  validates :first_name, :last_name, :city, :state, :zip, presence: true
  validates :zip, numericality: { only_integer: true }

  def full_name
    return "#{first_name} #{last_name}"
  end

end
