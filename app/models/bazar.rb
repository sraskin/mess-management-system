# == Schema Information
#
# Table name: bazars
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  member_id    :integer
#  item_details :text
#  total        :string
#  comment      :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Bazar < ActiveRecord::Base
  belongs_to :member
end
