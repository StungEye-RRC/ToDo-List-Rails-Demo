class Task < ActiveRecord::Base
  # This class is auto-magically mapped to the "tasks" db table.
  
  validates :description, presence: true
end
