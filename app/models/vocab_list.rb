class VocabList < ActiveRecord::Base
  has_many :middles
  has_many :entries, through: :middles
  belongs_to :book
end
