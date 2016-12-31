module ViewHelper
  def sidebar_link(text, path, icon)
    link_to raw("<i class='fa #{icon}'></i> <span> #{text} </span>"), path
  end
end
