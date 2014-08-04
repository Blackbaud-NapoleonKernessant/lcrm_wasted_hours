class TableHeader
  def initialize
    # initialize content will go here
  end

  def table_header
    table_header_hash = {}
    table_header_hash['date'] = 'Date'
    table_header_hash['teamName'] = 'teamName'
    table_header_hash['category'] = 'Category'
    table_header_hash['total_employees'] = 'Total Employees Affected'
    table_header_hash['hours_lost_per_employee'] = 'Hours Lost Per Employee'
    table_header_hash['description'] = 'Description'
    table_header_hash['total_hours'] = 'Total Hours Wasted'
    table_header_hash
  end

  def table_header_delete
    table_header_hash = {}
    table_header_hash['date'] = 'Date'
    table_header_hash['teamName'] = 'teamName'
    table_header_hash['category'] = 'Category'
    table_header_hash['total_employees'] = 'Total Employees Affected'
    table_header_hash['hours_lost_per_employee'] = 'Hours Lost Per Employee'
    table_header_hash['description'] = 'Description'
    table_header_hash['total_hours'] = 'Total Hours Wasted'
    table_header_hash['delete'] = 'Delete'
    table_header_hash
  end

  def problem_category
    category_array = []
    category_array << 'Alfred'
    category_array << 'Jenkins'
    category_array << 'Build Failure'
    category_array << 'Dev Environment'
    category_array << 'Training / Questions'
    category_array << 'VPN / Connection'
    category_array << 'Escalation'
    category_array << 'Support Other Team'
    category_array << 'Other'
    category_array
  end

  def team_names
    team_name_array = []
    team_name_array << 'Stark'
    team_name_array << 'Martell'
    team_name_array << 'Lannister'
    team_name_array
  end
end