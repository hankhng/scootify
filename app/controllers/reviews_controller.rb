class ReviewsController < ApplicationController
  def new
    @review = Review.new
    authorize @review
    @scooter = Scooter.find(params[:scooter_id])
  end

  def create
    @review = Review.new(review_params)
    authorize @review
    @scooter = Scooter.find(params[:scooter_id])
    @review.renter = current_user
    @review.scooter = @scooter
    if @review.valid?
      @review.save
      redirect_to scooters_path
    else
      render :new
    end
  end

  # def destroy
  #   @review = Review.find(params[:id])
  #   @review.destroy
  # end

  private

  def review_params
    params.require(:review).permit(:comment, :rating)
  end
end
