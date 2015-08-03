class Daily < ActiveRecord::Base
  has_many :daily_completions
end
