class Task < ApplicationRecord
  belongs_to :user

  validates :title, :status, presence: true

  enum :status, {
    pending: 0,
    in_progress: 1,
    done: 2
  }
end
