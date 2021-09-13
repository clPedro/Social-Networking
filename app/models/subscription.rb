class Subscription < ApplicationRecord
  belongs_to :followed, class_name: 'users'
  belongs_to :followed_by, class_name: 'users'
end