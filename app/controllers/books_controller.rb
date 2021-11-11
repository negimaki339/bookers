class BooksController < ApplicationController
  
  def top
end
  
  
  def show
      
      
  end

  def index
      @books = Book.all
  end

  def new
     @book = Book.new
  end

  def create
    book = Book.new(blog_params)
    book.save
    redirect_to book_path(book.id)
    end

 
  
  def edit
    
  end
  
  private
  def book_params
    params.require(:book).permit(:title, :body)
  end
  
   def update
    
   end
  
  def destroy
    
  end
  
end
