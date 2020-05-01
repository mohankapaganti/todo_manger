class TodosController < ApplicationController
  skip_before_action :verify_authenticity_token
def index
  #render plain: Todo.all.map{|todo| todo.to_pleasant_string}.join("\n")
end
def show
render plain: Todo.find(params[:id]).to_pleasant_string
end
def create
new_todo=Todo.create!(todo_text: params[:todo_text],due_date: Date.parse(params[:due_date]),completed: false)
render plain: "The created todo id id #{new_todo.id}"
end
def update
  id=params[:id]
  completed=params[:completed]
  todo=Todo.find(id)
  todo.completed=true
  todo.save!
  render plain: " The todo with #{id} and marked as completed as #{completed}"
end
end
