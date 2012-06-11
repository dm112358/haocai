require './helper_51job.rb'

include Helper51job

index = 1

get_list_page_urls.each do |url| # 获取列表页URL列表进行循环

  1.upto(10).each do |i| # 翻页1..N
    html = get_list_page_html(url + "&curr_page=#{i}")
    content_url_list = parse_list_page_html(html)
    content_url_list.each do |item|
      puts "list page number=#{i}"
      puts "#{index}"
      puts item[:name]
      puts item[:url]
      content_html = get_content_page_html(item[:url])
      content_item = parse_content_page_html(content_html)
      puts content_item[:telephone]
      index += 1
    end
  end

end
