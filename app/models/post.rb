class Post < ApplicationRecord
    extend ActiveHash::Associations::ActiveRecordExtensions
    belongs_to_active_hash :category
    belongs_to :user
    has_many :comments
    has_one_attached :image

    validates :message, presence: true
    validates :image, presence: true

    def self.search(search)
        if search != ""
          Post.where('message LIKE(?)', "%#{search}%")
        else
          Post.all
        end
      end
end