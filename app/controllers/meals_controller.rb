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

class MealsController < ApplicationController

  def index

  end

  def new

  end

  def create

  end

end
