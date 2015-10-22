helpers do
	
  def current_user
    return nil unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end

  def increment_instance(word)
  	current_instance = HighlightInstance.find_by(character: word)
  	if current_instance == nil
  		HighlightInstance.create(user_id: 1, character: word, count: 1)
  	else
  		p "*" * 100
  		p current_count = current_instance.count
  		new_count = current_count + 1
  		current_instance.update_attribute(:count, new_count) 
  	end
  end

end