class TodosController < ApplicationController
  skip_before_filter :verify_authenticity_token
  before_action :num_record, only: [:show, :update, :destroy]

  def num_record
    @num = Todo.primary_key.to_i
    @res = Todo.find(params[:id])
  end

  def index
    render json: Todo.all
  end

  def show
    render json: @res
  end

  def create
    render json: [ { name: 'Todo 123', done: false } ]
  end

  def updated
    render json: Todo.last
  end

  def destroy
    render json: Todo.first
  end

end
