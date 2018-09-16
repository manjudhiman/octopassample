class ArticlesController < ApplicationController
require 'pry'

  def create
    # binding.pry
    puts "******Article***********"
    puts params.permit!
    puts "^^^^^^^^^^^^^^^^^^^^^^"
    @article = Article.new(params.permit!.require(:article).permit(:title, :text, address: [ :flat, :city])).with_in

    @article.save
    redirect_to @article
  end


  def show
    @article = Article.find(params[:id])
  end
end
