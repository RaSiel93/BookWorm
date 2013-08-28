module ChaptersHelper
  def get_last_number
    if @chapter.number == nil
      @chap = Chapter.where(book_id: @chapter.book_id).order(:number).last.number
      if @chap == nil
        1
      else
        @chap + 1
      end
    else
      @chapter.number
    end
  end
end
