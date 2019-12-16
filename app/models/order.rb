# frozen_string_literal: true

class Order < ApplicationRecord
  belongs_to :worker
  belongs_to :vehicle
  belongs_to :customer
  belongs_to :service
end
