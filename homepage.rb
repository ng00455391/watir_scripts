require 'watir-webdriver'

class Homepage
    def initialize
        @browser = Watir::Browser.new
        @browser.goto 'file:///home/nagaraj/watir/welcome.html'
    end
 
    def self.visit
        new
    end
 
    def welcome
        @browser.h1(id: 'welcome')
    end
 
    def close
        @browser.close
    end
end
