# == Schema Information
#
# Table name: others
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  member_id  :integer
#  purpose    :string
#  amount     :string
#  comment    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Other < ActiveRecord::Base
  belongs_to :member
end
