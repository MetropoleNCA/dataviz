class DatasetsController < ApplicationController
  require 'open-uri'
  require 'json'


  def index
    #response = RestClient.get "http://opendata.nicecotedazur.org/data/api/3/action/current_package_list_with_resources?limit=10"
    #response_mt = RestClient.get "http://demo.ckan.org/api/3/action/resource_search?query=format:geojson"
    response_mt = RestClient.get "http://donnees.ville.montreal.qc.ca/api/3/action/resource_search?query=format:geojson"
    response_nca = RestClient.get "http://opendata.nicecotedazur.org/data/api/3/action/resource_search?query=format:geojson"
    @for_json_mt = JSON.parse(response_mt)
    @for_json_nca = JSON.parse(response_nca)
    #@geoj = JSON.parse(open(@for_json["result"]["results"].first["url"], :proxy => nil).read)

  end

end
