module ApplicationHelper
  def flash_class(level)
    pp level
    classes = {
      notice: "alert alert-info",
      success: "alert alert-success",
      error: "alert alert-danger",
      alert: "alert alert-warning"
    }

    classes[level.to_sym]
  end
end
