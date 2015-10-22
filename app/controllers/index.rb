enable :sessions

get '/' do
  @textbooks = Book.all
  @articles = Article.all
  @vocab_lists = VocabList.all 
  erb :index
end

get '/articles' do
  @book = Book.first
  erb :'articles/index'
end

get '/articles/:id' do
  @content_array = []
  @article = Article.find(params[:id])
  erb :'/articles/show'
end

get '/vocab/index' do
  @book = Book.find(1)
  @vocab_lists = VocabList.all
  erb :'/vocab/index'
end

get '/vocab/:id' do
  @views = HighlightInstance.all
  @vocab_list = VocabList.find(params[:id])
  erb :'/vocab/show'
end

get '/textbooks' do
  erb :'/textbooks/index'
end

get '/study_lists' do
  erb :'/study_lists/index'
end

get '/study_lists/new' do
  erb :'/study_lists/new'
end

post '/study_lists' do
  @new_list = StudyList.create(title: "List 1")
end

get '/display_text' do
  p "*" * 100
  highlighted_words = @params.key(nil)
  @entry = Entry.find_by(character: highlighted_words)
  if highlighted_words != "" && highlighted_words != nil
    increment_instance(highlighted_words)
  end
  if request.xhr?
  	erb :_display_text, layout: false
  else
  	redirect '/' 
  end
end

get '/display_study_list' do
  @entries = Entry.all
  @highlight_instances = HighlightInstance.all
  erb :display_study_list
end

get '/add_to_study_list' do
  highlighted_words = @params.key(nil)
  if highlighted_words != ""
    increment_instance(highlighted_words)
  end
end
