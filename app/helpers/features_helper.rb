module FeaturesHelper
  
  def status_to_css_class(status)
    status.downcase.gsub(' ', '_')
  end
end
