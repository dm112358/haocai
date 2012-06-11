# require 'nokogiri'
# require 'open-uri'

# module
#     def safe_open(url, retries = 5, sleep_time = 0.42, headers = {})
#     begin  
#       open(url, headers).read  
#     rescue StandardError,Timeout::Error, SystemCallError, Errno::ECONNREFUSED #有些异常不是标准异常  
#       puts $!  
#       retries -= 1  
  
#       if retries > 0  
#         sleep sleep_time and retry  
#       else  
#         #TODO Logging..  
#         #TODO 多次爬取失败后记录到日志  
#       end  
  
#     end
# end