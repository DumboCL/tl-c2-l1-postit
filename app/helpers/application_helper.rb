module ApplicationHelper
  def fix_url(str)
    str.starts_with?('http://') ? str : "http://#{str}"
  end

  def display_datetime(time)
    time.strftime("西元%Y年%m月%d日%H:%M:%S") #西元2015年04月04日14:27:08
  end
end
