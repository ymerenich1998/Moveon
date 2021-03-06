# frozen_string_literal: true

class MiesController < ApplicationController
  before_action :authenticate_worker!

  def show
    @worker = current_worker
    @orders = current_worker.orders
  end
end
