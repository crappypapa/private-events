class User < ApplicationRecord
  has_many :created_events, class_name: 'Event', foreign_key: 'creator_id', dependent: :destroy
  has_many :attendances, dependent: :destroy
  has_many :attended_events, through: :attendances, source: :event
end
