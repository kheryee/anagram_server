get '/' do
  @word = params[:word]
  erb :index
end

post '/' do
  @word = params[:word]
  redirect to("/#{@word}")
end

get "/:word" do
  @word = params[:word]
  @array = Word.find_all_anagrams(@word)
  erb :show
end