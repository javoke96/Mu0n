# frozen_string_literal: true
class V1::CitiesController < ApplicationController
  def index
    cities = City.all
    render json: cities, status: :ok
  end



  def create
    data = city_params
    data[:prev] = City.order("created_at").last.name
    city = City.create(data)
  if city.save
    render json: city, status: :created
  else
    render json: { errors: city.errors }, status:    :unprocessable_entity
  end
end

def show
  city = City.find(params[:id])
  render json: city, status: :ok
end

def update
city = City.find(params[:id])

if city.update(city_params)
  render json: city, status: :ok
else
  render json: {errors: city.errors}, status: :unprocessable_entity
end
end

def destroy
  city = City.find(params[:id])
  city.destroy
  head 204
end

private
def city_params
  params.permit(:name, :status)
end
end
