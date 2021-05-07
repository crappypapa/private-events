class Event < ApplicationRecord
  validates :title, :description, :date, :location, presence: true

  belongs_to :creator, class_name: 'User'
  has_many :attendances, dependent: :destroy
  has_many :attendees, through: :attendances, source: :user

  scope :upcoming, -> { where('date >= ?', Date.today) }
  scope :past, -> { where('date < ?', Date.today) }
end
