class EntriesController < ApplicationController
  def index
    render json: Entry.all
  end

  def show
    render json: Entry.find(params[:id])
  end

  def create
    render json: Entry.create(params.require(:entry).permit(:name))
  end

  def update
    render json: Entry.update(params[:id], params[:entry])
  end

  def delete
     render json: Entry.destroy(params[:id])
  end
end
