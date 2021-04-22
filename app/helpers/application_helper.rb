module ApplicationHelper

  def max_width
    if devise_controller?
      "mw-md"
    else
      "mw-xl"
    end
  end
end
