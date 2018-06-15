class ReviewsController < ApplicationController
    before_action :set_flat

    def create
        @review = Review.new(review_params)
        @review.flat = @flat

        if @review.save
            redirect_to flat_path(@flat)
        else
            redirect_to flat_path(@flat)
        end
    end

    private

    def review_params
        params.require(:review).permit(:content, :flat_id)
    end

    def set_flat
        @flat = Flat.find(params[:flat_id])
    end
end
