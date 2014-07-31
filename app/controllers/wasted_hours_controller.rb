require "#{Rails.root}/lib/header/table_header"

class WastedHoursController < ApplicationController
  def index
    header = TableHeader.new
    @table_header =  header.table_header
    @table_body = LostProductivity.all
  end

  def new
    @problems = TableHeader.new.problem_category
    @today_date = Time.now.strftime("%m/%d/%Y")
    @current_year = Time.new.year
  end

  def process_new_form
    LostProductivity.create do |lost_productivity|
      lost_productivity.creation_date = Time.now.strftime("%m/%d/%Y")
      lost_productivity.problem_category = params[:problemCategory]
      lost_productivity.total_employees_affected = params[:numberOfEmployee]
      lost_productivity.hours_lost_per_employee = params[:numberOfHours]
      lost_productivity.description = params[:description]
      lost_productivity.total_hours_lost_employees = params[:numberOfHours].to_f * 60
    end
  end
end
