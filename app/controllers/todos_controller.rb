class TodosController < ApplicationController
def index
  render plain: Todo.all.map{|todo| todo.to_pleasant_string}.join("\n")
end
def show
render plain: Todo.find(params[:id]).to_pleasant_string
end
end
