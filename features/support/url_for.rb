class UrlFor

  Urls = {
    :main => '/'
  }

  def method_missing(method_name, *arguments, &block)
    url = Urls[method_name]
    raise "Could not find URL for #{method_name}" if url.nil?
    url
  end

end