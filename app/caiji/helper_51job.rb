#encoding=utf-8

require 'nokogiri'
require 'open-uri'
require './common_helper.rb'
require './models_init.rb'

module Helper51job

  # 获取列表页URL数组
  def get_list_page_urls

    list = []
    list.push( {:name => '北京', :value => '0100' } )
    list.push( {:name => '上海', :value => '0200' } )
    list.push( {:name => '深圳', :value => '0400' } )
    list.push( {:name => '沈阳', :value => '2302' } )
    list.push( {:name => '广州', :value => '0302' } )
    list.push( {:name => '武汉', :value => '1802' } )
    list.push( {:name => '安徽省', :value => '1500' } )
    list.push( {:name => '澳门', :value => '3400' } )
    list.push( {:name => '福建省', :value => '1100' } )
    list.push( {:name => '甘肃省', :value => '2700' } )
    list.push( {:name => '广东省(除深圳)', :value => '0300' } )
    list.push( {:name => '广西', :value => '1400' } )
    list.push( {:name => '贵州省', :value => '2600' } )
    list.push( {:name => '国外', :value => '3600' } )
    list.push( {:name => '海南省', :value => '1000' } )
    list.push( {:name => '河北省', :value => '1600' } )
    list.push( {:name => '河南省', :value => '1700' } )
    list.push( {:name => '黑龙江省', :value => '2200' } )
    list.push( {:name => '湖北省', :value => '1800' } )

    urls = []

    list.each do |job_area_item|
      urls.push 'http://search.51job.com/list/' + job_area_item[:value] + ',0000,0000,00,3,99,%2B,2,'
    end
    #urls.push 'http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=0000&industrytype=00&issuedate=9&providesalary=99&keyword=%E9%93%B6%E8%A1%8C&keywordtype=0&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&fromType=14'
    #urls.push 'http://search.51job.com/jobsearch/search_result.php?fromJs=1&jobarea=0000&district=0000&funtype=0000&industrytype=00&issuedate=9&providesalary=99&keyword=%E8%AE%A1%E7%AE%97%E6%9C%BA&keywordtype=0&lang=c&stype=2&postchannel=0000&workyear=99&cotype=99&degreefrom=99&jobterm=01&lonlat=0%2C0&radius=-1&ord_field=0&list_type=0&fromType=14'
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
