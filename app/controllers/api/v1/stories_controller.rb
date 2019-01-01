class Api::V1::StoriesController < ApplicationController
  before_action :find_story, only: [:show, :update, :destroy]
  before_action :find_user

  def index
    @stories = Story.all
    render json: @stories, status: 200
  end

  def show
    render json: @story, status: 200
  end

  def create
    @story = Story.create(story_params)
    if @story.valid?
      render json: @story, status: 201
    else
      render json: @story.errors.full_messages, status: 406
    end
  end

  def update
    @story.update(story_params)
    render json: @story, status: 202
  end

  def destroy
    @story.destroy
    render json: @story, status: 202
  end

  private

  def find_story
    @story = Story.find_by(id: params[:id])
  end

  def find_user
    @user = User.find_by(id: params[:user_id])
  end

  def story_params
    params.require(:story).permit(:title, :description, :image, :user_id)
  end

end
