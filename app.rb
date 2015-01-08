require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/scrabble')


get('/') do
  erb(:home)
end

#Practice

get('/practice') do #This is the form with 2 inputs
  erb(:practice)
end

get('/score') do # Results page for practice
    #"Hey (name) why don't you have friends?"
    # if have time, add Time comments (ie "why are you awake?")
    @score = params.fetch('word').scrabble()
    @name = params.fetch('name')
    @word = params.fetch('word')
  erb(:score)
end

#Two player

get('/two_player') do   #This is the form with 4 things of input
  erb(:two_player)
end

get('/two_player_winner') do # Results page for 4 input form
  @word1 = params.fetch('word')
  @score1 = params.fetch('word').scrabble()

  @word2 = params.fetch('word')
  @score2 = params.fetch('word').scrabble()

  if @score1.>(@score2)
    @winner = params.fetch('player1')
  elsif @score1.==(@score2)
    @winner = "No one. It was a tie!"
  else
    @winner = params.fetch('player2')
  end

  erb(:two_player_winner)
end
