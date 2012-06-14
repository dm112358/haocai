require './helper_51job.rb'

include Helper51job

total_item_index = 0

get_list_page_urls.each do |url| # 获取列表页URL列表进行循环

  page_index = 0
  while true
    page_index += 1
    url = url + "#{page_index}" + '.html'

    puts "list page number = #{page_index}"
    puts "#{url}"

    list_page_html = get_list_page_html(url)
    if list_page_html != nil
      content_page_url_list = parse_list_page_html(list_page_html)
      if content_page_url_list.length == 0
        break
      end
      content_page_url_list.each do |item|
        
        puts "\ttotal item idex = #{total_item_index}"
        puts "\t#{item[:name]}"
        puts "\t#{item[:url]}"

        content_page_html = get_content_page_html(item[:url])
        if content_page_html != nil
          total_item_index += 1
          content_item = parse_content_page_html(content_page_html)

          puts "\t\ttelephone = #{content_item[:telephone]}"
          puts "\t\tfax = #{content_item[:fax]}"
          puts "\t\taddress = #{content_item[:address]}"

         # 将分析出的内容写入到数据库






          

          puts ""
          puts ""

        end
      end
    end
  end

end
