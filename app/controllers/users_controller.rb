class UsersController < ApplicationController
  before_action :set_list, only: [:lists]
  def show
    @user = User.find(params[:id])
  end
  def lists
    # @books = @list.books
    @user = User.find(params[:id])
  end
  private
  # Use callbacks to share common setup or constraints between actions.
  def set_list
    @lists = List.where(user_id: params[:id])
  end
  # Never trust parameters from the scary internet, only allow the white list through.
  def list_params
    params.require(:list).permit(:title, :content, :user_id) #user_idを受け取れるようにする
  end

end
