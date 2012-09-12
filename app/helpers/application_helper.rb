module ApplicationHelper
  #retourne le titre complet d'une page
  def full_title(page_title)
    base_title = "Popy"    
    return "#{base_title} | #{page_title}" unless page_title.empty?
    return base_title
  end
end
