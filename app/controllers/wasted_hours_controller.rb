require "#{Rails.root}/lib/header/table_header"

class WastedHoursController < ApplicationController
  def index
    header = TableHeader.new
    @current_year = Time.new.year
    @today_date = Time.now.strftime("%m/%d/%Y")
    puts "----------------------- #{@today_date}"
    @table_header =  header.table_header
  end
end
