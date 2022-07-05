class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to task_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    reredirect_to task_path
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end


# <!--  <ul>
# <% @tasks.each do |task| %>
# <li><%= link_to task.title, task_path(task) %></li>
# <% end %>
# </ul>
#
# <%= link_to "add task", task_path(@task) %>
# -->


#   <%= @tasks.each do |task| %>
# <ul class="list-group">
# <li class="list-group-item">
#   <input class="form-check-input me-1" type="checkbox" value="" aria-label="...">
#   <%= @task.title %>
# </li>
# </ul>

# <%= form_for(@task) do |f| %>
#   <form>
#       <div class="mb-3">
#         <label for="f.title" class="form-label">Title</label>
#         <input type= "f.text_field :title" class="form-control" id="task-title">
#         <div id="taskTitle" class="form-text"></div>
#       </div>
#       <div class="mb-3">
#         <label for="f.details" class="form-label">Details</label>
#         <input type="f.text_area" class="form-control" id="taskDetails">
#       </div>
#       <button type="submit" class="btn btn-primary">Create Task</button>
#     </form>
#   <% end %>
