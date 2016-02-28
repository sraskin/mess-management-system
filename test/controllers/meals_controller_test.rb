# == Schema Information
#
# Table name: meals
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  member_id  :integer
#  date       :string
#  breakfast  :string
#  lunch      :string
#  dinner     :string
#  total      :string
#  comment    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class MealsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
end
