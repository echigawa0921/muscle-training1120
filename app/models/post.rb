class Post < ApplicationRecord
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :category
    belongs_to :user
    has_one_attached :image

    validates :message, presence: true
    validates :image, presence: true
end