# frozen_string_literal: true

class Model < ApplicationRecord
  belongs_to :mark
  has_many :vehicles
end
