class TodosController < ApplicationController

  def index
    # begin
    # render json: [
    #   { name: 'Todo 0', done: false },
    #   { name: 'Todo 2', done: true },
    #   { name: 'Todo 3', done: true },
    #   { name: 'Todo 4', done: false }
    # ]
    # end
    render json: Todo.all
  end

  def show
  end

  def create
  end

  def updated
  end

  def destroy
  end

end
