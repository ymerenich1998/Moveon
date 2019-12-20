# frozen_string_literal: true

class Vehicle < ApplicationRecord
  has_many :orders
  has_many :customers, through: :orders
  has_many :workers, through: :orders
  belongs_to :model

  def name
    "#{model.mark.name} #{model.name} (#{number})"
  end
end
