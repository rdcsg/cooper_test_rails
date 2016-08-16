class PerformanceData < ApplicationRecord
  belongs_to :user, required: true
end
