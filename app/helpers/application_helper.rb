module ApplicationHelper

  def sort_direction_toggle(column)
    if params[:sort] == column && params[:direction] == 'asc'
      'desc'
    else
      'asc'
    end
  end

  def sort_icon(column, direction)
    if column == params[:sort]
      if direction == 'asc'
        content_tag(:span, '↑', class: 'sort-icon asc')
      else
        content_tag(:span, '↓', class: 'sort-icon desc')
      end
    else
      content_tag(:span, '↑', class: 'sort-icon asc') 
    end
  end
end
