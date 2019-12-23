# frozen_string_literal: true

class OrderService < ApplicationRecord
  belongs_to :order
  belongs_to :service
  belongs_to :item, optional: true
end
