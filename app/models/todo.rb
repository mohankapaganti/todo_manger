class Todo < ActiveRecord::Base
  def to_pleasant_string
    "#{id}. #{todo_text} #{due_date} #{completed}"
  end
end
