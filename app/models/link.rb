class Link < ApplicationRecord
  validates :url, :link_name, presence: true
  validates :url, uniqueness: {
    scope: :user_id,
    message: 'you have already added this link'
  }

  belongs_to(:user, {
    primary_key: :id,
    foreign_key: :user_id,
    class_name:  :User
  })
end
