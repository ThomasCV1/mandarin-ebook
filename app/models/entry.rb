class Entry < ActiveRecord::Base
  has_many :middles
  has_many :vocab_lists, through: :middles
end
