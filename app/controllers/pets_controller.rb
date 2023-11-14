class PetsController < ApplicationController
  def index
    @pets = Pet.all
    render :index
  end

  def create
    @pet = Pet.create(
      name: params[:name],
      breed: params[:breed],
      age: params[:age],
    )
    render :show
  end

  def show
    @pet = Pet.find_by(id: params[:id])
    render :show
  end

  def update
    @pet = Pet.find_by(id: params[:id])
    @pet.update(
      name: params[:name] || @pet.name,
      breed: params[:breed] || @pet.breed,
      age: params[:age] || @pet.age,
    )
    render :show
  end

  def destroy
    @pet = Pet.find_by(id: params[:id])
    @pet.destroy
    render json: { message: "Pet destroyed successfully" }
  end
end
