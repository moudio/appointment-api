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

  private
  def book_params
    params.require(:book).permit(:user_id, :car_id, :date, :city)
  end
end
