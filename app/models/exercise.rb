class Exercise < ActiveRecord::Base
  belongs_to :user

  validates :exercise_type, presence: true
  validates :day, numericality: { only_integer: true }
  validates :month, numericality: { only_integer: true }
  validates :year, numericality: { only_integer: true }
  validates :time_used, numericality: true
  validate :date_is_valid
  validate :future_check
  def get_date
    Date.new(year, month, day)
  end

  def future_check
    if not date_is_valid or get_date > Date.today
      errors.add(:day, "Date is not valid. Please check values again.")
    end
  end

  def date_is_valid
    if not Date::valid_date? year, month, day
      errors.add(:day, "Date is not valid. Please check values.")
    end
  end
end