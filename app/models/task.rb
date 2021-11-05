class Task < ApplicationRecord
  belongs_to :project
  validates :name, presence: true

  def toggle!
    if completed_at.present?
      update(completed_at: nil)
    else
      update(completed_at: Time.now)
    end
  end

  def completed?
    completed_at.present?
  end
end
