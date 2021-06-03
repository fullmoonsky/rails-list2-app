class ContentRatingsController < ApplicationController
  before_action :set_content_rating, only: %i[ show edit update destroy ]

  # GET /content_ratings or /content_ratings.json
  def index
    @content_ratings = ContentRating.all
  end

  # GET /content_ratings/1 or /content_ratings/1.json
  def show
  end

  # GET /content_ratings/new
  def new
    @content_rating = ContentRating.new
  end

  # GET /content_ratings/1/edit
  def edit
  end

  # POST /content_ratings or /content_ratings.json
  def create
    @content_rating = ContentRating.new(content_rating_params)

    respond_to do |format|
      if @content_rating.save
        format.html { redirect_to @content_rating, notice: "Content rating was successfully created." }
        format.json { render :show, status: :created, location: @content_rating }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @content_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /content_ratings/1 or /content_ratings/1.json
  def update
    respond_to do |format|
      if @content_rating.update(content_rating_params)
        format.html { redirect_to @content_rating, notice: "Content rating was successfully updated." }
        format.json { render :show, status: :ok, location: @content_rating }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @content_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_ratings/1 or /content_ratings/1.json
  def destroy
    @content_rating.destroy
    respond_to do |format|
      format.html { redirect_to content_ratings_url, notice: "Content rating was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content_rating
      @content_rating = ContentRating.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def content_rating_params
      params.require(:content_rating).permit(:rating)
    end
end
