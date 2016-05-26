class FriendshipsController < ApplicationController
  
  def create
  @friendship = current_user.friendships.build(:friend_id => params[:friend_id])
    if @friendship.save
      flash[:success] = "Added friend."
     redirect_to friendship_path(current_user)
    else
      flash[:danger] = "You have already befriended this user."
      redirect_to user_path(params[:friend_id])
    end
  end

  def show
  @user = User.find(params[:id])
  end

  def destroy
  @friendship = current_user.friendships.find_by(friend_id: params[:id])
  @friendship.destroy
  flash[:danger] = "Friendship removed."
  redirect_to current_user
  end

end
