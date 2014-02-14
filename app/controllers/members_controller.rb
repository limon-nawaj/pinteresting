class MembersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@pins = @user.pins.order("created_at DESC").paginate(:page => params[:page], :per_page => 12)
  end
end
