# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  content    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Post < ApplicationRecord
  validates :content, presence: true, length: { minimum: 20 }
  has_many :comments
  default_scope { order(created_at: :desc) }
end
