module ApplicationHelper
  def format_as_localtime(datetime)
    datetime.localtime.strftime "%d/%b/%Y %H:%M:%S"
  end
end
