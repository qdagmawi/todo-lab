class Task < ApplicationRecord
  belongs_to :user

  validates :title, presence: true
  validates :description, presence: true
  validates :due_date, presence: true
  validates :status, presence: true

  enum :status, {
    pending: 0,
    in_progress: 1,
    completed: 2
  }
end
