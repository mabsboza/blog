# == Schema Information
#
# Table name: posts
#
#  id           :bigint           not null, primary key
#  title        :string
#  description  :text
#  published    :boolean
#  published_at :datetime
#  author_id    :bigint           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
class Post < ApplicationRecord
  belongs_to :author
  has_many :elements

  has_one_attached :header_image
end
