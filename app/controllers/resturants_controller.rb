class ResturantsController < ApplicationController

  # GET /resturants
  # GET /resturants.json
  def index
    if params.has_key?('location')
      @resturants = Resturant.where("location LIKE ?", params[:location])
    else
      @resturants = Resturant.all
    end
    self.headers.merge!('Content-Type' => 'application/json' )
    self.response_body = @resturants.to_json
  end

  # GET /resturants/1
  # GET /resturants/1.json
  def show
    @resturant = Resturant.find(params[:id])
    self.headers.merge!('Content-Type' => 'application/json' )
    self.response_body = @resturant.to_json
  end

  # GET /resturants/1/edit
  def edit
    @resturant = Resturant.find(params[:id])
  end

  # GET /resturants/new
  # GET /resturants/new.json
  def new
    @resturant = Resturant.new
    self.headers.merge!('Content-Type' => 'application/json' )
    self.response_body = @resturant.to_json
  end

  # POST /resturants
  # POST /resturants.json
  def create
    @resturant = Resturant.new(params[:resturant])
    if @resturant.save
      self.headers.merge!('Content-Type' => 'application/json' )
      self.response_body = @resturant.to_json
    else
      self.headers.merge!('Content-Type' => 'application/json' )
      self.response_body = @resturant.errors.to_json
    end
  end

  # PUT /resturants/1
  # PUT /resturants/1.json
  def update
    @resturant = Resturant.find(params[:id])

    if @resturant.update_attributes(params[:resturant])
      self.headers.merge!('Content-Type' => 'application/json' )
      self.response_body = @resturant.to_json
    else
      self.headers.merge!('Content-Type' => 'application/json' )
      self.response_body = @resturant.errors.to_json
    end
  end

  # DELETE /resturants/1
  # DELETE /resturants/1.json
  def destroy
    @resturant = Resturant.find(params[:id])
    @resturant.destroy
    self.headers.merge!('Content-Type' => 'application/json' )
    self.response_body = {status: "Deleted"}
  end
end
