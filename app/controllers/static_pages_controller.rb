class StaticPagesController < ApplicationController
  def new
    @visitor = Visitor.new
    puts "$" * 60
  end

  def create
    @visitor = Visitor.create(first_name: visitor_params[:first_name], last_name: visitor_params[:last_name], phone_number: visitor_params[:phone_number], email: visitor_params[:email], message: visitor_params[:message])    
  end

  def visitor_params
    params.require(:visitor).permit(:first_name,:last_name,:phone_number,:email,:message)
  end
end
