class Front::ThemasController < ApplicationController
  def new
    @thema = Thema.new
    # @thema.sort_object_themas.build
  end

  def create
    @thema = Thema.new(thema_parameter)
    @thema.save
    redirect_to front_themas_path
  end

  def index
    @themas = Thema.all
  end

  def sort
    @thema = Thema.find_by(params[:id])
  end

  def get_objects
    @objects = SortObject.search_by_kana_name(params[:name])
    render :new, formats: :json, handlers: 'jbuilder'
  end

  def return_first_objects
    thema = Thema.find_by(params[:id])
    @objects = thema.objects.sample(2)
    render :sort, formats: :json, handlers: 'jbuilder'
  end

  private
  def thema_parameter
    params.require(:thema).permit(:title, :detail, :category_id, {sort_object_ids: []})
  end
end
