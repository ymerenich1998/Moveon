# frozen_string_literal: true

class Service < ApplicationRecord
  has_many :order_services
  has_many :orders, through: :order_services
end
