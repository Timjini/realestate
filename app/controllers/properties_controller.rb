class PropertiesController < ApplicationController
  before_action :set_property, only: %i[ show edit update destroy ]
  before_action :authenticate_user!
  # before_action :correct_user, only: [:create,:edit, :update, :destroy]



  # GET /properties or /properties.json
  def index
    @properties = Property.all
  end

  # GET /properties/1 or /properties/1.json
  def show
    @properties = Property.all
  end

  # GET /properties/new
  def new
    @property = current_user.properties.build
  end

  # GET /properties/1/edit
  def edit
  end

  # POST /properties or /properties.json
  def create
    @property = current_user.properties.new(property_params)

    respond_to do |format|
      if @property.save
        format.html { redirect_to property_url(@property), notice: "Property was successfully created." }
        format.json { render :show, status: :created, location: @property }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /properties/1 or /properties/1.json
  def update
    respond_to do |format|
      if @property.update(property_params)
        format.html { redirect_to property_url(@property), notice: "Property was successfully updated." }
        format.json { render :show, status: :ok, location: @property }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @property.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /properties/1 or /properties/1.json
  def destroy
    @property.destroy

    respond_to do |format|
      format.html { redirect_to properties_url, notice: "Property was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  def correct_user
    @properties = current_user.properties.find_by(id: params[:id])
    redirect_to properties_path , notice: "Not Authorized to edit" if @ask.nil?
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property
      @property = Property.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def property_params
      params.require(:property).permit(:name, :street, :city, :country, :zipcode, :latitude, :longitude, :price,:user_id, :photo)
    end
end
