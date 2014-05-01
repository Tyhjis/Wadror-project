class User < ActiveRecord::Base
  validates :username, uniqueness: true, length: { minimum: 3 }
  has_secure_password
  has_many :exercises, dependent: :destroy
  has_many :memberships, dependent: :destroy
  has_many :groups, through: :memberships, source: :exercise_group, dependent: :destroy
  
  def total_hours
    total = 0
    today = Date.today
    exercises.each do |e|
      day = e.get_date
      days = (today - day).to_i
      if days <= 28
        total += e.time_used
      end
    end
    return total
  end
end
