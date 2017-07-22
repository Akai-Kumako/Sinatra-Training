require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/reloader'
require './models/card.rb'

get '/' do
  card = Card.first
  "#{card.word}: #{card.description}"
  # #{hoge} は変数の中身を展開するRubyの記法
  # card.word + ": " + card.description と書くのと同じ
end

get '/cards' do
  cards = Card.all
  erb :index, locals: { cards: cards }
end

post '/cards' do
  card = Card.new(word: params['word'], description: params['description'])
  card.save
  redirect '/cards'
end

get '/cards/new' do
  erb :new
end

get '/cards/:id/edit' do
  card = Card.find(params['id'])
  erb :edit, locals: { card: card }
end

patch '/cards/:id' do
  card = Card.find(params['id'])
  card.update(word: params['word'], description: params['description'])
  redirect '/cards'
end

delete '/cards/:id/delete' do
  card = Card.find(params['id'])
  card.destroy
  redirect '/cards'
end
