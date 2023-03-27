class JobsController < ApplicationController
  before_action :set_job, only: [:show, :update, :destroy]

  def index
    jobs = Job.all
    render json: jobs
  end

  def create
    job = Job.new(job_params)
    if job.save
      render json: job, status: :created
    else
      render json: { errors: job.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    render json: @job
  end

  def update
    if @job.update(job_params)
      render json: @job
    else
      render json: { errors: @job.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    if @job.destroy
      render json: { message: "Job deleted successfully" }
    else
      render json: { errors: @job.errors.full_messages }, status: :unprocessable_entity
    end
  end

  private

  def set_job
    @job = Job.find(params[:id])
  end

  def job_params
    params.require(:job).permit(:title, :description, :company, :location, :category_id, :salary_range, :employment_type, :years_of_experience, :education_level, :posted_at, :expires_at, :is_active)
  end
end
