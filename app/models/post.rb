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
  extend FriendlyId
  friendly_id :title, use: :slugged

  belongs_to :author
  has_many :elements

  has_one_attached :header_image
  validates_presence_of :title, :description
  validates_length_of :description, within: 50..250
end
