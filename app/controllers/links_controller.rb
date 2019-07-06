class LinksController < ApplicationController
  before_action :set_link, only: [:show]

  # GET /links
  # GET /links.json
  def index
    @links = Link.all
  end

  # GET /links/1
  # GET /links/1.json
  def show
    if params[:short]
      @link = Link.find_by(short: params[:short])
      if redirect_to @link.source_url
        @link.clicks += 1
        @link.save
      end
    else
      @link = Link.find(params[:id])
    end
  end

  # POST /links
  # POST /links.json
  def create
    @link = Link.new(link_params)

    respond_to do |format|
      if @link.save
        format.html { redirect_to @link, notice: 'Link was successfully created.' }
        format.js
        format.json { render :show, status: :created, location: @link }
      else
        format.html { render :new }
        format.json { render json: @link.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    def set_link
      @link = Link.find_by(short: params[:short])
    end

    def link_params
      params.require(:link).permit(:source_url)
    end
end
