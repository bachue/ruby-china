# coding: utf-8
class Oauth
  include Mongoid::Document
  include Mongoid::BaseModel

  field :condition
  validates_presence_of :condition

  # TODO: move all these fields to model Provider
  field :consumer_key
  field :consumer_secret
  field :request_token
  field :request_secret
  field :access_token
  field :access_secret
  field :site, :default => 'https://api.twitter.com' # now, twitter by default
  validates_presence_of :consumer_key, :consumer_secret, :site
  # END TODO
end
