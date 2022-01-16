class FlowersController < ApplicationController
  def create
    flower = Flower.new(
      name: params[:name],
      family: params[:family],
      color: params[:color],
      image: params[:image],
    )
    flower.save
    render json: flower.as_json
  end

  def index
    flowers = Flower.all
    render json: flowers.as_json
  end

  def show
    flower = Flower.find_by(id: params[:id])
    render json: flower.as_json
  end

  def update
    flower = Flower.find_by(id: params[:id])
    flower.name = params[:name] || flower.name
    flower.family = params[:family] || flower.family
    flower.color = params[:color] || flower.color
    flower.image = params[:image] || flower.image
    flower.save
    render json: flower.as_json
  end
end
