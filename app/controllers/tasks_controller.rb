class TasksController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy, :toggle]

  def filtered
    if params[:q].present?
      # TODO, prevent sql injection here
      @tasks = Task.where("name like '%#{params[:q]}%'")
    else
      @tasks = Task.all
    end
  end

  def toggle
    @task.toggle!
    @project = @task.project
    @total_completed = @project.tasks.where.not(completed_at: nil).count
  end

  def show
    render '_task', locals: { task: @task }
  end

  def edit
  end

  def create
    @task = Task.new(task_params)

    if @task.save
      redirect_to project_path(@task.project)
    else
      @tasks = Task.all.order(created_at: :desc)
      # GOTCHA! If you're using Turbo this way you need to 
      # add the status 442 otherwise you'll get a console error in the browser with:
      # Error: Form responses must redirect to another location
      # https://github.com/hotwired/turbo-rails/issues/12#issuecomment-754629885
      render :index, status: 442
    end
  end

  def update
    if @task.update(task_params)
      redirect_to @task, notice: 'Project was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /projects/1
  def destroy
    @task.destroy
    redirect_to tasks_url, notice: 'Project was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @task ||= Task.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def task_params
      params.require(:task).permit(:name, :project_id)
    end
end
