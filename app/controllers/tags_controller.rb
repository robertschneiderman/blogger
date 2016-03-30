class TagsController < ApplicationController

	include TagsHelper

  before_filter :require_login, only: [:destroy]


  def index
    @tags = Tag.all
  end		

  def new
  	@tag = Tag.new
  end

  def create
  	@tag = Tag.new(tag_params)
  	@tag.save

  	flash.notice = "Tag '#{@tag.name}' Created!"

  	redirect_to tag_path(@tag)
  end  

	def show
	  @tag = Tag.find(params[:id])
	end

	def destroy
		@tag = Tag.find(params[:id]).destroy
  	flash.notice = "Tag '#{@tag.name}' Deleted!"

  	redirect_to tags_path
  end
end
