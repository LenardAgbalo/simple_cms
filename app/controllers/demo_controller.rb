class DemoController < ApplicationController
  layout 'application'
  def index
      # index is an action
      render('index')
  end

  def hello
    # index is an action
    @array = [1, 2, 3, 4, 5]
    @id = params[':id']
    @page = params[:page]
    render('hello')
  end

  def other_hello
      redirect_to(:action => 'index')
  end

  def google
    redirect_to('https://google.com')
  end

  def escape_output

  end
end
