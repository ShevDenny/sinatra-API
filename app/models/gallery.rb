class Gallery < ActiveRecord::Base
    has_many :paintings
    has_many :reviews
    has_many :buyers, through: :reviews
end