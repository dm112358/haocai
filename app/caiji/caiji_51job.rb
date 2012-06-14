require './helper_51job.rb'

include Helper51job

index = 1

get_list_page_urls.each do |url| # 获取列表页URL列表进行循环

  1.upto(2).each do |i| # 翻页1..N
    list_page_html = get_list_page_html(url + "#{i}" + '.html')
    if list_page_html != nil
      content_page_url_list = parse_list_page_html(list_page_html)
      if content_page_url_list.length == 0
        break
      end
      content_page_url_list.each do |item|
        puts "list page number=#{i}"
        puts "#{index}"
        puts item[:name]
        puts item[:url]
        content_page_html = get_content_page_html(item[:url])
        if content_page_html != nil
          content_item = parse_content_page_html(content_page_html)
          puts content_item[:telephone]

         # 将分析出的内容写入到数据库






          index += 1
        end
      end
    end
  end

end
