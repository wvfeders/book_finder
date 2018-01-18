#this program is responsible for taking in an isbn number for the webiste and then calling the associated book on the Amazon.com page

require "sinatra"
require_relative "book_finder_program.rb"

get '/' do 
	erb :book_finder_home
end	
	
post '/isbn_out' do
	isbn_number = params[:isbn_number]
	redirect 'https://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Dstripbooks&field-keywords=' + isbn_number
end

