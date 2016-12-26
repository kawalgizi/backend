module ViewHelper
  def sidebar_link(icon, text, target_path)
    link_to raw("<i class='fa #{icon}'></i> <span> #{text} </span>"), target_path
  end
end
