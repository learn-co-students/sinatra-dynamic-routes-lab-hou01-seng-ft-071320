require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end
  get '/square/:number' do
    @n = params[:number]
    "#{@n.to_i*@n.to_i}"
  end
  get '/say/:number/:phrase' do
    v = ''
    @num = params[:number].to_i
    @pha = params[:phrase]
    @num.times do 
      v += @pha
    end
    "#{v}"
  end
  get '/say/:w1/:w2/:w3/:w4/:w5' do
    @w1 = params[:w1]
    @w2 = params[:w2]
    @w3 = params[:w3]
    @w4 = params[:w4]
    @w5 = params[:w5]
    "#{@w1} #{@w2} #{@w3} #{@w4} #{@w5}."
  end
  get '/:operation/:number1/:number2' do
    @op = params[:operation]
    @num1 = params[:number1].to_i
    @num2 = params[:number2].to_i
    if @op == "add"
      "#{@num1 + @num2}"
    elsif @op == "subtract"
      "#{@num1 - @num2}"
    elsif @op == "multiply"
      "#{@num1 * @num2}"
    elsif @op == "divide"
      "#{@num1 / @num2}"
    end
  end
end