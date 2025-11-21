class ListsController < ApplicationController

  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @list= List.new
  end

  def create
    @list = List.new(list_params)
      if @list.save
        redirect_to root_path, notice: "New list success"
      else
        render :new, status: :unprocessable_content
      end

  end

  def update
  end

  def destroy
  end
private



    def list_params
      params.require(:list).permit(:name, :content, :photo)
    end
end
