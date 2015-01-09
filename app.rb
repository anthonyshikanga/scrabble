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
    # if (params.fetch('word').class()).!==(String)
    #   @word = "Numbers don't count! Cheater!"
    #   @score = 0
    # else
      @score = params.fetch('word').scrabble()
    # end

    if params.fetch('name').==("")
      @name="Anonymous Hippo"
    else
      @name = params.fetch('name')
    end
    if params.fetch('word').==("")
      @word="Absolutely Nothing"
    else
      @word = params.fetch('word')
    end
  erb(:score)
end

#Two player

get('/two_player') do   #This is the form with 4 things of input
  erb(:two_player)
end

get('/two_player_winner') do # Results page for 4 input form
  #Player1 information
  @score1 = params.fetch('word1').scrabble()

  if params.fetch('player1').==("")
    @name1 = "Bob"
  else
    @name1 = params.fetch('player1')
  end

  if params.fetch('word1').==("")
    @word1 ="Zero"
  else
    @word1 = params.fetch('word1')
  end

  #Player2 information
  @score2 = params.fetch('word2').scrabble()

  if params.fetch('player2').==("")
    @name2 = "Bob 2"
  else
    @name2 = params.fetch('player2')
  end

  if params.fetch('word2').==("")
    @word2 ="Zilch"
  else
    @word2 = params.fetch('word2')
  end

  #figures out who won
  if @score1.>(@score2)
    @winner = @name1
    @loser = @name2
  elsif @score1.==(@score2)
    @winner = "your mom"
    @loser = "Both of you"
  else
    @winner = @name2
    @loser = @name1
  end
  erb(:two_player_winner)
end
