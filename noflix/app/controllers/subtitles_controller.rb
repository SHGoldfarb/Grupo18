class SubtitlesController < ApplicationController
  before_action :set_subtitle, only: [:show, :edit, :update, :destroy]

  # GET /subtitles
  # GET /subtitles.json
  def index
    @subtitles = Subtitle.all.order("language ASC")
  end

  # GET /subtitles/1
  # GET /subtitles/1.json
  def show
  end

  # GET /subtitles/new
  def new
    @subtitle = Subtitle.new
  end

  # GET /subtitles/1/edit
  def edit
  end

  # POST /subtitles
  # POST /subtitles.json
  def create
    @subtitle = Subtitle.new(subtitle_params)

    respond_to do |format|
      if @subtitle.save
        format.html { redirect_to @subtitle, notice: 'Subtitle was successfully created.' }
        format.json { render :show, status: :created, location: @subtitle }
      else
        format.html { render :new }
        format.json { render json: @subtitle.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /subtitles/1
  # PATCH/PUT /subtitles/1.json
  def update
    respond_to do |format|
      if @subtitle.update(subtitle_params)
        format.html { redirect_to @subtitle, notice: 'Subtitle was successfully updated.' }
        format.json { render :show, status: :ok, location: @subtitle }
      else
        format.html { render :edit }
        format.json { render json: @subtitle.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /subtitles/1
  # DELETE /subtitles/1.json
  def destroy
    @subtitle.destroy
    respond_to do |format|
      format.html { redirect_to subtitles_url, notice: 'Subtitle was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_subtitle
      @subtitle = Subtitle.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def subtitle_params
      params.require(:subtitle).permit(:language)
    end
end
