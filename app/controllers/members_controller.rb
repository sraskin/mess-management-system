class MembersController < ApplicationController
  before_action :set_member, only: [:show, :edit, :update, :destroy]

  def index
    @members = Member.all
  end

  def show
  end

  def new
    @member = Member.new
  end

  def edit
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to @member, notice: 'success'
    else
      render :new
    end
  end

  def update
    if @member.update(member_params)
      redirect_to @member, notice: 'success update'
    else
      render :new
    end
  end

  def destroy
    @member.destroy
    redirect_to members_index_url, notice: 'delete success'
  end

  private
  def set_member
    @member = Member.find(params[:id])
  end

  def member_params
    params.require(:member).permit(:user_id, :member_name, :member_phone, :member_address, :mess_address, :tolet_status, :tolet_details)
  end

end
