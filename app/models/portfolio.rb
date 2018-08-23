class Portfolio < ApplicationRecord
  validates_presence_of :title, :body, :main_image, :thumb_image
  # def self.react
  #   where(subtitle: 'React JS')
  # end
  scope :react, -> { where(subtitle: 'React JS') }

  scope :ruby_on_rails, -> { where(subtitle: 'Ruby on Rails') }
end
