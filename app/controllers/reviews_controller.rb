class ReviewsController < ApplicationController
def create
  @review = Review.new(review_params)
  @review.product_id = params[:product_id]
  @review.user_id = current_user.id
  puts @review.product_id, @review.user_id
    if @review.save
      redirect_to :back
      puts "me work"
    else
      puts "I'M BROKENNNNNNNNNN"
      redirect_to :back
    end
  end

  def review_params
    params.require(:review).permit(:product_id, :user_id, :description, :rating)
  end

end
