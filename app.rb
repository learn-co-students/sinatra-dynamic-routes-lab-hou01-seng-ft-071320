require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @x = params[:name]
    @y = @x.split("").reverse
    @z = @y.join
  end

  get '/square/:number' do
    @x = params[:number].to_i
    (@x*@x).to_s
  end

  get '/say/:number/:phrase' do
    @x = params[:number].to_i
    @y = params[:phrase]
    @z = ""
    @index = 0
    while @x > @index do
      @z = @z + " " + @y
      @index +=1
    end
    @z
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word_1 = params[:word1]
    @word_2 = params[:word2]
    @word_3 = params[:word3]
    @word_4 = params[:word4]
    @word_5 = params[:word5]
    @all_words = "#{@word_1} #{@word_2} #{@word_3} #{@word_4} #{@word_5}."
  end

  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @num1 = params[:number1].to_f
    @num2 = params[:number2].to_f
    if @operation == "add"
      x = @num1 + @num2
    elsif @operation == "subtract"
      x = @num1 - @num2
    elsif @operation == "multiply"
      x = @num1 * @num2
    elsif @operation == "divide"
      x = @num1 / @num2
    end
    x.to_s

  end
end