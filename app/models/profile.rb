class Profile < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :prefecture
  
  has_one_attached :image

  enum gender: {
    "男性": 1,
    "女性": 2,
    "秘密": 3
  }
end
