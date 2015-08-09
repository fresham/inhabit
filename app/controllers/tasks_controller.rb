class TasksController < ApplicationController
  def index
    @habit_data = {}
    @daily_data = {}
    @todo_data = {}
  end
end
