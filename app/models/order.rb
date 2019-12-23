# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :worker
  belongs_to :vehicle
  belongs_to :customer
  has_many :order_services
  has_many :services, through: :order_services
end
