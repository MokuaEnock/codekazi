class JobsController < ApplicationController
  def create
  end

  def update
  end

  def destroy
  end

  def index
    render json: Job.all
  end

  private

  def job_params
    paras.permit(:)
  end
end
