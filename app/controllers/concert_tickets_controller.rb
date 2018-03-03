class ConcertTicketsController < ApplicationController
    def index
      redirect_to concert_tickets_path if user_signed_in?
    end
end
