# frozen_string_literal: true

class WorkersController < ApplicationController
  before_action :authenticate_worker!
  before_action :set_worker, only: [:show]

  def index
    @workers = Worker.all
  end

  def show
    redirect_to my_path if @worker.id == current_worker.id
  end

  private

  def set_worker
    @worker = Worker.find(params[:id])
  end
end
