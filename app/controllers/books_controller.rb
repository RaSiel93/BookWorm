class BooksController < ApplicationController
  before_action :set_book, only: [:show, :edit, :update, :destroy]
  #before_action :set_chapter, only: [:show]

  # GET /books
  # GET /books.json
  def index
    if params[:search]
      @books = Book.search(params[:search])
    elsif params[:tag]
      @books = Book.tagged_with(params[:tag])
    elsif params[:id]
      @books = Book.where :category_id => params[:id]
    else
      @books = Book.all.paginate(:page => params[:page]).order('id DESC')
    end
  end

  # GET /books/1
  # GET /books/1.json
  def show
  end

  # GET /books/new
  def new
    @book = Book.new
  end

  # GET /books/1/edit
  def edit
  end

  # POST /books
  # POST /books.json
  def create
    #book_params = ActionController::Parameters.new()
    @book = Book.new(book_params)
    #logger.info (book_params)

    respond_to do |format|
      if @book.save
        format.html { redirect_to @book, notice: 'Book was successfully created.' }
        format.json { render action: 'show', status: :created, location: @book }
      else
        format.html { render action: 'new' }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /books/1
  # PATCH/PUT /books/1.json
  def update
    respond_to do |format|
      if @book.update(book_params)
        format.html { redirect_to @book, notice: 'Book was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @book.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /books/1
  # DELETE /books/1.json
  def destroy
    @book.destroy
    respond_to do |format|
      format.html { redirect_to book_path }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book
      @book = Book.find(params[:id])
    end

    #def set_chapter
    #  @chapter = Chapter.find(params[:id])
    #end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_params
      params.require(:book).permit(:title, :description, :category_id, :tag_list, :user_id)
    end
end
