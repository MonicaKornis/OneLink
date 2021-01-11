class User < ApplicationRecord
  validates :email, :session_token, :name, presence: true

  has_many(:pages, {
    primary_key: :id,
    foreign_key: :user_id,
    class_name: :Page
  })

  has_many(:links, {
    primary_key: :id,
    foreign_key: :user_id,
    class_name:  :Link
  })
end
