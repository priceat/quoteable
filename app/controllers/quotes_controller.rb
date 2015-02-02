class QuotesController < ApplicationController

  def index
    @quote = Quote.order("RANDOM()").first
  end

  def create
    @new_quote = Quote.create(quote_params)

    if @new_quote.invalid?
      @quote = Quote.order("RANDOM()").first
      render :index, :status => :unprocessable_entity
    else
      @quote = @new_quote
      render :index
    end

  end

  def about
  end

  private

  def quote_params
    params.require(:quote).permit(:saying, :author)
  end
end
