class TableHeader
  def initialize
    # initialize content will go here
  end

  def table_header
    table_header_hash = {}
    table_header_hash['date'] = 'Date'
    table_header_hash['category'] = 'Category'
    table_header_hash['total_employees'] = 'Total Employees Affected'
    table_header_hash['category'] = 'Category'
    table_header_hash['description'] = 'Description'
    table_header_hash['total_hours'] = 'Total Hours Wasted'
    table_header_hash
  end
end