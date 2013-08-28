module ChaptersHelper
  def get_last_number
    if @chapter.number == nil
      @chap = Chapter.where(book_id: params[:book_id]).order(:number).last
      if @chap == nil
        1
      else
        @chap.number + 1
      end
    else
      @chapter.number
    end
  end
end
