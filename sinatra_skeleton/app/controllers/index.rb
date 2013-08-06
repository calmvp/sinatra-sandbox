get '/' do
  puts "[LOG] Getting /"
  puts "[LOG] Params: #{params.inspect}"
  erb :index
end

get '/cool_url' do
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  erb :get_cool_url
end

post '/cool_url' do
  puts "[LOG] Getting /cool_url"
  puts "[LOG] Params: #{params.inspect}"
  @text_input = params[:text_input]
  @area_input = params[:myname]
  @radio_button2 = params[:group2]
  if @radio_button2 == "Bees"
    erb :get_cool_url 
  else
    erb :post_cool_url
  end
end
