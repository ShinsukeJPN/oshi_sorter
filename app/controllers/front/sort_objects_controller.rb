class Front::SortObjectsController < ApplicationController
  def new
    @object = SortObject.new
  end

  def create
    @object = SortObject.new(object_parameter)
    @object.save
    redirect_to new_sort_object_path
  end

  def index
    @objects = SortObject.all
  end

  private
  def object_parameter
    params.permit(:name, :kana_name, :image)
  end
end
