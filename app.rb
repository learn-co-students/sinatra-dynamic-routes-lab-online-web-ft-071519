require_relative 'config/environment'

class App < Sinatra::Base
  
    get '/reversename/:name' do 
      @name = params[:name]
      "#{@name.reverse}"
    end 
    get '/square/:number' do
      @num = params[:number].to_i * params[:number].to_i 
      return @num.to_s
    end
    get '/say/:number/:phrase' do 
      @string_phrases = []
      @phrase = params[:phrase]
      @times = params[:number].to_i
      @times.times do 
        @string_phrases << "#{@phrase}"
      end
      return @string_phrases.to_s
    end
    get '/say/:word1/:word2/:word3/:word4/:word5' do
     "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
    end
    get '/:operation/:number1/:number2' do 
      @operation = params[:operation]
      @num1 = params[:number1].to_i
      @num2 = params[:number2].to_i 
      @final = nil
      case @operation 
      when "add"
        @final = @num1 + @num2 
      when "subtract"
        @final = @num1 - @num2 
      when "divide"
        @final = @num1 / @num2 
      when "multiply"
        @final = @num1 * @num2
      end 
      @final.to_s
    end
  
end