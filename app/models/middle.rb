class Middle < ActiveRecord::Base
  belongs_to :vocab_list
  belongs_to :entry
end
