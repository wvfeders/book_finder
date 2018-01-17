require "sinatra"
require_relative "book_finder_program.rb"

get '/' do 
	erb :book_finder_home
end	
	
post '/isbn_out' do
	isbn_number = params[:isbn_number]
	redirect 'https://www.amazon.com/s/ref=nb_sb_noss?url=search-alias%3Dstripbooks&field-keywords=' + isbn_number
end

# get '/to_page' do
# 	isbn_number = params[:isbn_number]
# 	erb :book_finder_results, :locals => {:isbn_number => isbn_number}
# end