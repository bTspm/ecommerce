module ApplicationHelper
  def flash_class(level)
    case level
    when "info"
      "alert alert-info"
    when "success"
      "alert alert-success"
    when "error"
      "alert alert-danger"
    when "warning"
      "alert alert-warning"
    else
      "Unkown Flash Level"
    end
  end
end
