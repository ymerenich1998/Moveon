# frozen_string_literal: true

class PagesController < ApplicationController
  before_action :authenticate_worker!
  def index; end
end
