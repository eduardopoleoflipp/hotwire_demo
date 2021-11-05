class ProjectsController < ApplicationController
  def index
    render json: Project.where('name LIKE ?', "%#{params[:q]}%")
  end

  def show
    @project = Project.find_by(id: params[:id])
    @project_name = @project.present? ? @project.name : ''

    if @project.present?
      @tasks = @project.tasks.order(created_at: :desc)
      @task = Task.new
      @total_completed = @tasks.where.not(completed_at: nil).count
    end
  end
end
