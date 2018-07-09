class RatingsController < ApplicationController
  def create
    @resturant = Resturant.find(params[:resturant_id])
    @rating = @resturant.ratings.create(params[:rating])
    self.response_body = @rating.to_json
  end

 def destroy
   @resturant = Resturant.find(params[:resturant_id])
   @rating = @resturant.ratings.find(params[:id])
   @rating.destroy
   self.response_body = {status: "Deleted"}
 end
end
