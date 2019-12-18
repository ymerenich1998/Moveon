# frozen_string_literal: true

class Mark < ApplicationRecord
  has_many :models
  has_many :vehicles, through: :models
end
