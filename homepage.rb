require 'watir-webdriver'
require 'headless'

class Homepage
    def initialize
        headless = Headless.new
        headless.start
        @browser = Watir::Browser.new
        @browser.goto 'file:///home/nagaraj/watir/welcome.html'
    end
 
    def self.visit
        new
    end
 
    def body
        @browser.body
    end
    def nav_bar
        @browser.ul(class: 'nav')
    end
    def h1
        @browser.h1
    end
    def h2
        @browser.h2
    end
    def list
        @browser.ul
    end

 
    def close
        @browser.close
    end
end
