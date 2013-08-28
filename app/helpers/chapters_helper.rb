module ChaptersHelper
  def get_last_number
    if @chapter.number == nil
      @chap = Chapter.where(book_id: @chapter.book_id)
      @chap.order(:number).last.number + 1
    else
      @chapter.number
    end
  end
end
