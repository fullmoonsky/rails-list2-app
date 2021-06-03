class ContentProvidersController < ApplicationController
  before_action :set_content_provider, only: %i[ show edit update destroy ]

  # GET /content_providers or /content_providers.json
  def index
    @content_providers = ContentProvider.all
  end

  # GET /content_providers/1 or /content_providers/1.json
  def show
  end

  # GET /content_providers/new
  def new
    @content_provider = ContentProvider.new
  end

  # GET /content_providers/1/edit
  def edit
  end

  # POST /content_providers or /content_providers.json
  def create
    @content_provider = ContentProvider.new(content_provider_params)

    respond_to do |format|
      if @content_provider.save
        format.html { redirect_to @content_provider, notice: "Content provider was successfully created." }
        format.json { render :show, status: :created, location: @content_provider }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @content_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /content_providers/1 or /content_providers/1.json
  def update
    respond_to do |format|
      if @content_provider.update(content_provider_params)
        format.html { redirect_to @content_provider, notice: "Content provider was successfully updated." }
        format.json { render :show, status: :ok, location: @content_provider }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @content_provider.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /content_providers/1 or /content_providers/1.json
  def destroy
    @content_provider.destroy
    respond_to do |format|
      format.html { redirect_to content_providers_url, notice: "Content provider was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content_provider
      @content_provider = ContentProvider.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def content_provider_params
      params.require(:content_provider).permit(:name, :thumbnail_image)
    end
end
