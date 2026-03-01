require 'selenium-webdriver'

profile_dir = File.expand_path("ffprofile")
prefs_path = "#{profile_dir}/user.js"
FileUtils.mkdir_p(profile_dir)

options = Selenium::WebDriver::Firefox::Options.new()

options.add_argument("-profile")
options.add_argument(profile_dir)

#options.add_argument "--kiosk"
DRIVER = Selenium::WebDriver.for :firefox, options: options

File.write(
  prefs_path,
<<PREFS,
user_pref("general.useragent.override", 'Mozilla/5.0 (SMART-TV; Linux) AppleWebkit/605.1.15 (KHTML, like Gecko) SamsungBrowser/9.2 TV Safari/605.1.15');
user_pref("full-screen-api.allow-trusted-requests-only", false);
user_pref("full-screen-api.approval-required", false);
user_pref("full-screen-api.warning.timeout", 0);
user_pref("browser.fullscreen.exit_on_escape", false);
PREFS
mode: "a"
)

lines = File.readlines(prefs_path, chomp: true).uniq
File.write(prefs_path, lines.join("\n") + "\n")

#DRIVER.manage.window.full_screen
  
module WebNav
  def self.go_to(p)
    DRIVER.navigate.to 'https://youtube.com/tv' if p == :youtube
    DRIVER.navigate.to 'https://youtube.com/tv/activate' if p == :yt_signin
  end
end

WebNav.go_to :youtube
