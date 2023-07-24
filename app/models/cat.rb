class Cat < ApplicationRecord
    has_many :publications
    belongs_to :user
end
