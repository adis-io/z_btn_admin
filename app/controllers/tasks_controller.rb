class TasksController < ApplicationController
  before_action { request.format = :json }
  skip_before_action :verify_authenticity_token

  def create
    sid = params[:user_sid]
    title = params[:title]

    user = User.find_by sid: sid

    return @message = "User with sid #{sid} not exists" if user.nil?

    task = user.tasks.create title: title

    return @message = "Task creating error" unless task.persisted?

    @message = "Task created"
    @task_id = task.id
  end
end
