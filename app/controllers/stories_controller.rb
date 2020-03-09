class StoriesController < ApplicationController
  def story_params
    params.require(:story).permit(:name, :link)
  end

  def index
    @stories = Story.all.limit(10)
  end

  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)
    @story.save
    redirect_to stories_path
  end
end
