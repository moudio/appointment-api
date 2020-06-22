class BooksController < ApplicationController


  def create
    @book = Book.create(book_params)
    if @book.save
      render json: {
        status: :book_created
      }
    else
      render json: {
        status: 500,
        book_errors: @book.errors.full_messages
      }

    end

  end

  private
  def book_params
    params.require(:book).permit(:user_id, :car_id, :booking_date, :city)
  end
end
