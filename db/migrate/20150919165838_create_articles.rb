class CreateArticles < ActiveRecord::Migration
  def change
  	create_table :articles do |t|
  		t.string :title
  		t.text :content
  		t.references :book
  		t.integer :chapter_id

  		t.timestamps
  	end
  end
end
