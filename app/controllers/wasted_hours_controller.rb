require "#{Rails.root}/lib/header/table_header"

class WastedHoursController < ApplicationController
  def index
    header = TableHeader.new
    @table_header =  header.table_header
  end
end
