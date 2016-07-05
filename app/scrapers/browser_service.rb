class BrowserService
  def initialize
    @proxy = ProxyService.get
  end

  def get
    return browser_with_proxy if @proxy
    browser
  end

  def browser_with_proxy
    raise 'browser with proxy is not implemented !!!!!!!!!!!!!!!!!'
  end

  def browser
    firefox
    # phantomjs doesn't show chinese. maybe need to change outputEncoding to gb2312
    # https://github.com/ariya/phantomjs/issues/11743
    #phantomjs
  end

  def phantomjs
    Watir::Browser.new :phantomjs
  end

  def firefox
    Watir::Browser.new :firefox
  end
end
