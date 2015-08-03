class Habit < ActiveRecord::Base
  has_many :habit_completions
end
