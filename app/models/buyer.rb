class Buyer < ActiveRecord::Base
    has_many :paintings
    has_many :reviews
    has_many :galleries, through: :reviews
end