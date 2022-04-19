require 'selenium-webdriver'

# User agent setup
user_agent = 'Mozilla/5.0 (SMART-TV; Linux) AppleWebkit/605.1.15 (KHTML, like Gecko) SamsungBrowser/9.2 TV Safari/605.1.15'

profile = Selenium::WebDriver::Firefox::Profile.new
profile['general.useragent.override'] = user_agent
profile['full-screen-api.allow-trusted-requests-only'] = false
profile['full-screen-api.approval-required'] = false
profile['full-screen-api.warning.timeout'] = 0
profile['browser.fullscreen.exit_on_escape'] = false
options = Selenium::WebDriver::Firefox::Options.new(profile: profile)
options.add_argument "--kiosk"
DRIVER = Selenium::WebDriver.for :firefox, options: options

DRIVER.manage.window.full_screen
  
module WebNav
  def self.go_to(p)
    DRIVER.navigate.to 'https://youtube.com/tv' if p == :youtube
    DRIVER.navigate.to 'https://youtube.com/tv/activate' if p == :yt_signin
  end
end

WebNav.go_to :youtube
