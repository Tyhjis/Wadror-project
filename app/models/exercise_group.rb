class ExerciseGroup < ActiveRecord::Base
  has_many :memberships, dependent: :destroy
  has_many :users, through: :memberships, dependent: :destroy

  def top
    ar = Array.new
    users.each do |user|
      ar << user.total_hours
    end
    ar.max
  end
end