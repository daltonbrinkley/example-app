class PagesController < ApplicationController

  def fortune_method
    fortunes = [
      "You'll be successful", 
      "You will have 100 kids", 
      "You will find love!"
    ]
    
    fortune = fortunes[rand(fortunes.length)]
    render json: fortune
  end

  def number_method
    number_array = []
    6.times do
      number_array << rand(1..60)
    end
    render json: number_array
  end

  def beer_method

number = 99
song_array = [ ]

100.times do
  if number > 1
    song_array << "#{number} bottles of beer on the wall, #{number} bottles of beer. Take one down and pass it around, #{number - 1} bottles of beer on the wall."
  elsif number == 1
    song_array << "1 bottle of beer on the wall, 1 bottle of beer. Take one down and pass it around, no more bottles of beer on the wall."
  else 
    song_array << "No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, 99 bottles of beer on the wall."
  end
  
number = number - 1
end

render json: song_array

  end
end
