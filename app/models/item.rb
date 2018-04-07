class Item < ApplicationRecord
  belongs_to :feed

  scope :read, -> { where read: true }
  scope :unread, -> { where read: false }
  scope :favorite, -> { where favorite: true }
end
