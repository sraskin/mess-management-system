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

class Meal < ActiveRecord::Base
  belongs_to :member
end
