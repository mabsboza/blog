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
require "test_helper"

class ElementTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
