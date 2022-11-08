# frozen_string_literal: true

# model article
class Article < ApplicationRecord
  validates :title, presence: true
  validates :content, presence: true
end
