# == Schema Information
#
# Table name: elements
#
#  id               :bigint           not null, primary key
#  element_type     :string
#  post_id          :bigint           not null
#  position_integer :string
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#
class Element < ApplicationRecord
  belongs_to :post

  validates :element_type, inclusion: { in: [ 'paragraph', 'image', 'video-embed']}

  has_rich_text :content
  has_one_attached :image

  def paragraph?
    element_type == 'paragraph'
  end

  def image?
    element_type == 'image'
  end
end
