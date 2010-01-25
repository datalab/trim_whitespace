module TrimWhitespace
  
  def trim_whitespace
    trim_all_tabs
    5.times do
      trim_double_carriage_returns
    end
  end
  
  def trim_all_whitespace
    response.body = response.body.gsub(/  |\n|\t/,'') ##Replace Soft Tabs, Tabs, and Carriage Returns. Dangerous!
  end
  
  def trim_tabs
    response.body = response.body.gsub(/\t/,'') ##Replace Tabs
  end
  
  def trim_soft_tabs
    response.body = response.body.gsub(/  /,'') ##Replace Soft Tabs
  end
  
  def trim_all_tabs
    convert_tabs_to_soft_tabs
    trim_soft_tabs
  end
  
  def convert_tabs_to_soft_tabs
    response.body = response.body.gsub(/\t/,'  ') ##Replace Tabs with Soft Tabs
  end
  
  def trim_carriage_returns
    response.body = response.body.gsub(/\n/,'') ##Replace All Carrage Returns
  end
  
  def trim_double_carriage_returns
    response.body = response.body.gsub(/\n\n/,$/) ##Replace All Double Carrage Returns with a Single Carriage Return
  end
  
end