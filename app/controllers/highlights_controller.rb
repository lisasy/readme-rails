class HighlightsController < ApplicationController
  before_action :set_highlight, only: [:show, :edit, :update, :destroy]

  # GET /highlights
  def index
    @highlights = Highlight.all
  end

  # GET /highlights/1
  def show
  end

  # GET /highlights/new
  def new
    @highlight = Highlight.new
  end

  # GET /highlights/1/edit
  def edit
  end

  # POST /highlights
  def create
    @highlight = Highlight.new(highlight_params)

    if @highlight.save
      redirect_to @highlight, notice: 'Highlight was successfully created.'
    else
      render action: 'new'
    end
  end

  # PATCH/PUT /highlights/1
  def update
    if @highlight.update(highlight_params)
      redirect_to @highlight, notice: 'Highlight was successfully updated.'
    else
      render action: 'edit'
    end
  end

  # DELETE /highlights/1
  def destroy
    @highlight.destroy
    redirect_to highlights_url, notice: 'Highlight was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_highlight
      @highlight = Highlight.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def highlight_params
      params.require(:highlight).permit(:content)
    end
end
