require "#{Rails.root}/lib/header/table_header"

class WastedHoursController < ApplicationController
  def index
    header = TableHeader.new
    @table_header =  header.table_header
    @table_body = LostWork.all
  end

  def new
    @team_names = TableHeader.new.team_names
    @problems = TableHeader.new.problem_category
    @today_date = Time.now.strftime("%m/%d/%Y")
    @current_year = Time.new.year
  end

  def process_new_form
    LostWork.create do |lost_productivity|
      lost_productivity.incident_date = Time.now
      lost_productivity.team_name = params[:teamName]
      lost_productivity.problem_category = params[:problemCategory]
      lost_productivity.total_employees_affected = params[:numberOfEmployee]
      lost_productivity.hours_lost_per_employee = params[:numberOfHours]
      lost_productivity.description = params[:description]
      total_hours_lost = params[:numberOfEmployee].to_f * params[:numberOfHours].to_f
      lost_productivity.total_hours_lost_employees = total_hours_lost
    end
    redirect_to :controller => :wasted_hours, :action => :index
  end

  # def format_time(user_input)
  #   output = 0
  #   if user_input < 1
  #     output = format_minutes(user_input)
  #   else
  #     temp = user_input * 60
  #     hours = temp.to_i / 60
  #     minutes = user_input - hours
  #     output =  hours + format_minutes(minutes)
  #   end
  #   output
  # end
  #
  # def format_minutes(user_input)
  #   output = user_input * 60
  #   ".#{output}".to_f
  # end

  # def admin_factory_reset
  #   LostWork.delete_all
  # end

  # def delete_column
  #   header = TableHeader.new
  #   @table_header =  header.table_header_delete
  #   @table_body = LostWork.all
  # end
  #
  # def delete_column_action
  #   field_id = params[:id]
  #   LostWork.find(field_id).destroy
  #   redirect_to :controller => :wasted_hours, :action => :index
  # end
end
