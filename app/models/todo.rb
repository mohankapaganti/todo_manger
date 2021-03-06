class Todo < ActiveRecord::Base
  def to_pleasant_string
    "#{id}. #{todo_text} #{due_date} #{completed}"
  end
  def self.overdue
    where("due_date < ? and completed = ?", Date.parse(Date.today.to_s), false)
    #return Todo object array for due_date is less than Date.today"
  end

  def self.due_today
    where("due_date = ?", Date.parse(Date.today.to_s))
  end

  def self.due_later
    where("due_date > ?", Date.parse(Date.today.to_s))
  end
end
