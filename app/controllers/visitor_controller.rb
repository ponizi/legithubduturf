class VisitorController < ApplicationController
  def new
    puts "*" * 150
    @visitor = Visitor.new
  end
  def create
    puts "*" * 150
    @visitor = Visitor.create(first_name: visitor_params[:first_name], last_name: visitor_params[:last_name], phone_number: visitor_params[:phone_number], email: visitor_params[:email], message: visitor_params[:message])
    redirect_to static_page_path(1)    
  end

  def visitor_params
    params.require(:visitor).permit(:first_name,:last_name,:phone_number,:email,:message)
  end
end
