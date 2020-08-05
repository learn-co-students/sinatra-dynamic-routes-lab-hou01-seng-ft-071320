require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name=params[:name]
    "#{@user_name.reverse}"
  end

  get '/square/:number' do
    @number=params[:number].to_i
    @result=@number*@number
    "#{@result}"
  end

  get '/say/:number/:phrase' do
    @number=params[:number]
    @phrase=params[:phrase]
    list=''
    (@number.to_i).times do
      list += @phrase
    end
    list
  end
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    @num1=params[:number1].to_i
    @num2=params[:number2].to_i
    @ope=params[:operation]
     
    if @ope=="add"
      result=@num1 + @num2
    elsif @ope=="subtract"
      result=@num1 - @num2
    elsif @ope=="multiply"
      result=@num1*@num2
    elsif @ope=="divide"
      result=@num1/@num2
    end 
    result.to_s
  end
end