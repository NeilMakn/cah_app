class Entry < ActiveRecord::Base
  belongs_to :Playa
  attr_accessible :black_card, :draws, :losses, :white_card, :wins
end
