class CreateEntries < ActiveRecord::Migration
  def change
  	create_table :entries do |t|
  		t.string :pinyin
  		t.string :character
  		t.string :part_of_speech
  		t.string :definition
  		
  		t.timestamps
  	end
  end
end
