# frozen_string_literal: true

# Class
class Item < ActiveRecord::Base
  belongs_to :step
end
