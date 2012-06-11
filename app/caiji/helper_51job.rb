#encoding=utf-8

require 'nokogiri'
require 'open-uri'
require './common_helper.rb'
require './models_init.rb'

module Helper51job

  # 获取列表页URL数组
  def get_list_page_urls

    # 翻页参数 &curr_page=1

    urls = []
    urls.push 'http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=0000&industrytype=00&issuedate=9&providesalary=99&keyword=%E9%93%B6%E8%A1%8C&keywordtype=0&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&fromType=14'
    urls.push 'http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=0000&industrytype=00&issuedate=9&providesalary=99&keyword=%E8%AE%A1%E7%AE%97%E6%9C%BA&keywordtype=0&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&fromType=14'
    return urls
  end

  # 根据URL获取列表页HTML
  def get_list_page_html(url)
    html = ""
    begin
      html_stream = open(url)
      html = html_stream.read
      html.encode!("utf-8", "gbk")
    rescue OpenURI::HTTPError => ex
      puts "can't get url: #{url}"
    end
    return html
  end

  # 从HTML中分析出内容页URL列表
  def parse_list_page_html(html)
    doc = Nokogiri::HTML.parse(html)
    url_list = []
    doc.css('td.td2 a.coname').map.each do |item|
      company_name = '' + item.text
      company_url = item['href']
      t = {}
      t[:name] = company_name
      t[:url] = company_url
      url_list.push(t)
    end  
    url_list
  end
  
  # 根据URL获取内容页HTML
  def get_content_page_html(url)
    html = ""
    begin
      html_stream = open(url)
      html = html_stream.read
      html.encode!("utf-8", "gbk")
    rescue OpenURI::HTTPError => ex
      puts "can't get url: #{url}"
    end
    return html
  end
  
  # 根据HTML分析出信息内容
  def parse_content_page_html(html)
    doc = Nokogiri::HTML(html)
    content_item = {}
    content_item[:name] = doc.at_css('td.sr_bt').text
    content_item[:description] = doc.at_css("p.txt_font").inner_html 
    content_item[:address] = nil
    content_item[:telephone] = nil
    content_item[:fax] = nil
    doc.css("p.txt_font1").each do |item|
     if item.text.strip[0] == "地"
       address = item.text.gsub(/具\.+/, '')
     content_item[:address] = address.strip.split(/：/)[1]
     end
      if item.text.strip[0] == "电"
        content_item[:telephone] = item.text.strip.split(/：/)[1]
      end
      if item.text.strip[0] == "传"
        content_item[:fax] = item.text.strip.split(/：/)[1]
      end
    end
    return content_item
  end

end
