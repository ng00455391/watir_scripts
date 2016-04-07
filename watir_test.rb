#! /home/nagaraj/.rbenv/shims/ruby
require './assertions.rb'
require './homepage.rb'
 
homepage = Homepage.visit
 
assert(' \'the index has Body Tag included\'') { homepage.body.exists? }
assert(' \'the index page has navigation bar\'') { homepage.nav_bar.exists? }
assert(' \'the page has h1\'') { homepage.h1.exists? }
assert(' \'the page has h2\'') { homepage.h2.exists? }
assert(' \'the page has List\'') { homepage.list.exists? }

# assert('that the welcome message is visible') { homepage.index.visible? }
# assert('that the welcome message text is correct') { homepage.welcome.text == 'Home' }
# assert('that the ') {}

 
homepage.close