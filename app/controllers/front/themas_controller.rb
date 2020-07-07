class Front::ThemasController < ApplicationController
  def new
    @thema = Thema.new
  end

  def create
    @thema = Thema.new(thema_parameter)
    @thema.save
    redirect_to new_sort_object_path
  end

  def index
    @themas = Thema.all
  end

  def get_objects
    @objects = SortObject.search_by_kana_name(params[:name])
    render 'new', formats: :json, handlers: 'jbuilder'
  end

  private
  def thema_parameter
    params.permit(:title, :detail, :category_id, {object_id: []})
  end
end
