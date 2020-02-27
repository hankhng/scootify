class ReviewsController < ApplicationController
  def new
    @review = Review.new
    @scooter = Scooter.find(params[:scooter_id])
  end

  # def create
  #   @review = Review.new(review_params)
  #   @scooter = Scooter.find(params[:scooter_id])
  #   @review.scooter = @scooter
  #   if @review.valid?
  #     @review.save
  #     redirect_to scooter_path(@scooter)
  #   else
  #     render :new
  #   end
  # end

  # def destroy
  #   @review = Review.find(params[:id])
  #   @review.destroy
  # end

  private

  # def review_params
  #   params.require(:review).permit(:comment, :rating)
  # end
end
