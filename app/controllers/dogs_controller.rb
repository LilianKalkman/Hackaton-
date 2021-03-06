class DogsController < ApplicationController
  def index
    @dogs = Dog.all
  end

  def show
    @dog = Dog.find(params[:id])
  end

  def new
    @dog = Dog.new
end

def create
    dog_params = params.require(:dog).permit(:name, :age, :owner)

    @dog = Dog.new(dog_params)

    if @dog.save
       redirect_to @dog
    else
       render 'new'
    end
  end

  def edit
    @dog = Dog.find(params[:id])
  end
end
