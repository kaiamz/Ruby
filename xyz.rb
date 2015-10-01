class BookDatabase
  def set_books books
    @books = books
  end

  def set_author author
    @author = author
  end

  def get_books_of_author author
    @author = @books[author]
    if author == nil
      puts "No such author"
    else
      puts @books.join ', '
    end
  end
end
