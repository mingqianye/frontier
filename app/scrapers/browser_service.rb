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
  end

  def firefox
    Watir::Browser.new :firefox
  end
end
