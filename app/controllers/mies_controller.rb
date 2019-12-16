# frozen_string_literal: true

class MiesController < ApplicationController
  before_action :set_worker

  def show
    redirect_to user_path(@worker.id) if @worker.id == current_worker.id
  end

  private

  def set_worker
    @worker = Worker.find(params[:id])
  end
end
