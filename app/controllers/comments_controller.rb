class CommentsController < ApplicationController
  def new
    user = current_user
    @list = user.lists.find(params[:list_id])
    @book = @list.books.find(params[:book_id])
    @comment = @book.comments.build
  end

  def create 
    user = current_user
    @list = user.lists.find(params[:list_id])
    @book = @list.books.find(params[:book_id])
    @comment = @book.comments.build(comment_params)

    respond_to do |format|
      if @comment.save
        format.html { redirect_to list_url(@list), notice: '本にコメントを追加しました' }
        format.json { render :show, status: :created, location: @comment }
      else
        format.html { render :new }
        format.json { render json: @comment.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:content)
    end
end
