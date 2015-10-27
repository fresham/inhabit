class TasksController < ApplicationController
  def index
    render component: 'Overview'
  end
end
