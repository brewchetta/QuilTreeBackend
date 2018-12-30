class Api::V1::PagesController < ApplicationController
  before_action :find_page, only: [:show, :update, :destroy]
  before_action :find_story

  def index
    @pages = Page.all
    render json: @pages
  end

  def show
    render json: @page, status: 200
  end

  def create
    @page = Page.new(page_params)
    @page.number = @page.story.pages.length + 1
    @page.save
    if @page.valid?
      render json: @page, status: 201
    else
      render json: @page.errors.full_messages, status: 406
    end
  end

  def update
    @page.update(page_params)
    if @page.valid?
      render json: @page, status: 202
    else
      render json: @page.errors.full_messages, status: 406
    end
  end

  def destroy
    # Find pages after that in the story
    pages = Page.all.select{ |page| page.story_id === @page.story_id && page.number > @page.number }
    # Shift those page numbers down
    pages.each do |page|
      page.number = page.number - 1
      page.save
    end
    # And finally destroy the page
    @page.destroy
    render json: @page, status: 202
  end

  private

  def find_page
    @page = Page.find_by(id: params[:id])
  end

  private

  def find_story
    @story = Story.find_by(id: params[:story_id])
  end

  def page_params
    params.require(:page).permit(:number, :story_id, :content, :image)
  end

end
