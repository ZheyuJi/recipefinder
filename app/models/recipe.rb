class Recipe
  include HTTParty
  # || 
  #ENV['FOOD2FORK_SERVER_AND_PORT'] || 
  #|| 
  #ENV['FOOD2FORK_KEY'] 
  #ENV['FOOD2FORK_SERVER_AND_PORT'] || 


  def self.for term

  key_value = '31bf3f48103fefff5e4987489761e589'
  hostport = 'www.food2fork.com'
  base_uri "http://#{hostport}/api"
  default_params key: key_value
  format :json
    get("/search", query: {q: term})["recipes"]
  end

end