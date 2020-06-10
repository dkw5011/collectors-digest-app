class Collectable < ActiveRecord::Base
    belongs_to :user
    belongs_to :category
    validates :name, :description, :image_url, :initial_cost, :current_appraisel, presence: true
end
