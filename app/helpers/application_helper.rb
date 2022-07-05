module ApplicationHelper
  def active_link pats
    pats.include?( request.fullpath ) ? "text-red-300 border-b-4 border-red-300" : "text-gray-500"
  end

  def active_link_mb pats
    pats.include?( request.fullpath ) ? "text-white bg-red-300" : ""
  end
end
