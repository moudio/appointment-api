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
        book_errors: ['You already have a booking for that car!']
      }
    end

  end

def show
  @book = Book.find(params[:id])
  render json: {
    book: @book,
    car: @book.car
  }
end

  def destroy

      @book = Book.find(params[:id])

      if @book.destroy
        render json: {
          status: :book_destroyed,
          book_to_destroy: @book.id
        }
      else
        render json: {
          status: 500,
          book_destroy_errors: @book.errors.full_messages
        }

      end
  end

def update
@book = Book.find(book_params[:book_id])
if @book.update(date: book_params[:date], city: book_params[:city])
render json: {
  status: :patched
}
end
end

  private
  def book_params
    params.require(:book).permit(:user_id, :car_id, :date, :city, :book_id)
  end
end
