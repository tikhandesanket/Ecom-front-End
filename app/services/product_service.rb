require 'httparty'
require "base64"
class ProductService
  include HTTParty

  format :json

  base_uri "http://localhost:4000/api/v1"

  #def initialize(token)
  def initialize
    @options =  {
        headers: {
        # "X-Zingoy-Client" => AppConfig.api_client_id,
        # "Authorization" => "Bearer #{token}",
        "Content-Type" => "application/json",
        "Accept" => "application/json"
    }
    }
  end

  def product_line_item_list
   # self.class.get("/items", @options)
    self.class.get("/products", @options)
  end

  def cart_line_item_list(params_id)
    # self.class.get("/items", @options)


    @options.merge!("product_id"=>params_id)
    self.class.put("/carts", @options)
  end
end