class DynamicPagesController < ApplicationController
  def users
    @user = User.where(first_name = params[:first_name])
  end
  def home
    @gossips = Gossip.all
  end
  def gossip
    @gossip = Gossip.find(params[:id])
    @content = Gossip.find(params[:id]).content
  end
end
