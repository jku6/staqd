class WelcomeController < ApplicationController
  def index
    if session[:stack]
      @stack = session[:stack]
    else
      session[:stack] = Stack.new
      @stack = session[:stack]
    end
  end

  def create

    if params[:commit] == 'push'
      @stack = session[:stack]
      @color = params[:color]
      @stack.push(@color)
    elsif params[:commit] == 'pop'
      @stack = session[:stack]
      @stack.pop
    end
    # binding.pry
  end
end