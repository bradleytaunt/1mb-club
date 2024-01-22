require 'httparty'
require 'nokogiri'

HTTParty::Basement.default_options.update(verify: false)

response = HTTParty.get('https://1mb.club')

document = Nokogiri::HTML(response.body)
website_urls = document.css("#container tr")

puts "Scanning website members URLs..."
website_urls.each do |single_site|
    begin
        url = single_site.css("a.site").first.attribute("href").value
        response = HTTParty.get(url, timeout: 4)
        puts "Checking: " + url
    rescue Exception
        puts "<!-------- ERROR: " + url
    end
end
