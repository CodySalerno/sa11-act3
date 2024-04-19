def extract_urls(text)
  pattern = /((?:http|https|ftp):\/\/[^\s]+)/
  #pattern = /((?:http|https|ftp):\/\/[^\s]+.(?:com|net|org)[^\s]*)/ this would only catch the "normal" TLDs
  urls = text.scan(pattern)
  urls.each do |url|
    url = url[0].chomp('.')
    puts url
  end
end

sample_text = "Visit our site at http://www.example.org for more information. Check out our search page at https://example.com/search?q=ruby+regex. Don’t forget to ftp our resources at ftp://example.com/resources."

extract_urls(sample_text)
