class BookDatabase
  def set_books books
    @books = books
  end

  def get_books author
    books = @books[author]
    if books == nil
      puts "No such author"
    else
      puts books.join ', '
    end
  end


def count_books author
  books = @books[author]
  if books == nil
    puts "No such author"
  else
    puts books.length
  end
end

def find book
  result = nil
  @books.each do |author, books|
    if books.include? book
      result = author
    end
  end
  if result
    puts result
  else
    puts "No such book"
  end
end

def add_book author, title
  books = @books[author]
  if books
    if books.include? title
      puts "That book is already in the system"
    else
      books << title
    end
  else
    puts "No such author"
  end
end

def delete_book author, title
  books = @books[author]
  if books
    if books.include? title
      books.delete title
    else
      puts "No such title"
    end
  else
    puts "No such author"
  end
end
end

def handle_command db, command, arg
  if command == 'get'
    db.get_books arg
  elsif command == 'count'
    db.count_books arg
  elsif command == 'find'
    db.find arg
  elsif command == 'add'
    args = arg.split "," , 2
    if args.length == 2
      #strip removes blanks from beginning and end of string
      db.add_book args[0].strip, args[1].strip
    else
      "No book title provided"
    end
  elsif command == 'delete'
    args = arg.split ',', 2
    if args.length == 2
      db.delete_book args[0].strip, args[1].strip
    else
      "No book title provided"
    end
  else
    puts "Command not recognized"
  end
end

favorite_books = BookDatabase.new
favorite_books.set_books({ #Need parenthesis here so Ruby doesn't think this is a block
  'Frank Herbert'   => ['Dune', 'Dune Messiah', 'Children of Dune', 'God Emperor of Dune'],
  'Isaac Asimov'    => ['Foundation', 'Foundation and Empire', 'Second Foundation'],
  'Mervyn Peake'    => ['Titus Groan', 'Gormenghast'],
  'William Goldman' => ['The Princess Bride']
})

loop do
  print "Enter a command (q to finish): "

  entered = gets.chomp

  exit if entered == 'q'

  parts = entered.split ' ', 2 #Split into two parts
  handle_command favorite_books, parts[0], parts[1]
end
