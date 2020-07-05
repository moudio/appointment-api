# frozen_string_literal: true

class BooksController < ApplicationController
  # before_action :authorize_request
  before_action :find_booking, only: [:show, :destroy, :update]

  def create
    @book = Book.create(book_params)
    if @book.save
      render json: {
        status: :book_created,
        book: @book
      }

    else
      render json: {
        status: 500,
        book_errors: ['You already have a booking for that car!'],
        validation_errors: @book.errors
      }
    end
  end

  def show
    render json: {
      book: @book,
      car: @book.car
    }
  end

  def destroy
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
    if @book.update(date: book_params[:date], city: book_params[:city])
      render json: {
        status: :patched,
      }
    end
  end

  private

  def find_booking
    @book = Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:user_id, :car_id, :date, :city, :book_id)
  end
end
