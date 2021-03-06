class BooksController < ApplicationController
  def show
    @list = List.find(params[:list_id])
    @user = @list.user
    @book = @list.books.find(params[:id])
    @comment = @book.comments.find_by(book_id: params[:id])
    @books = Book.where(isbn: "#{@book.isbn}").where.not(list_id: params[:list_id])
  end

  def new
    @list = current_user.lists.find(params[:list_id])
    @book = @list.books.build
    if params[:keyword] && params[:keyword].size > 1
      @items = RakutenWebService::Books::Book.search(title: params[:keyword], hits: 10)
    end
  end

  def create
    @list = current_user.lists.find(params[:list_id])
    @book = @list.books.build(book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to new_list_book_url, notice: "「#{@list.title}」に本を追加しました。" }
        format.json { render :show, status: :created, location: @book }
      else
        format.html { render :new }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    list = current_user.lists.find(params[:list_id])
    book = list.books.find(params[:id])

    book.destroy
    respond_to do |format|
      format.html { redirect_to list_url(list), notice: '本を削除しました。' }
      format.json { head :no_content }
    end
  end

  private
    def book_params
      params.require(:book).permit(:isbn, :title, :comment, :author, :caption, :imageurl, :shopurl)
    end
end
