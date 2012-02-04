require 'sinatra'




class App < Sinatra::Application
  get '/' do
    [200, 'hi']
  end

  get '/with_cache' do
    cache_control :public, :max_age => 5 * 60
    [200, "It is #{Time.now}."]
  end

  get '/without_cache' do
    [200, "It is #{Time.now}."]
  end
end




__END__
