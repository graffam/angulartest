class DogsController < ApplicationController

  def index
    @dogs = Dog.where(bording: true)
  end
end
