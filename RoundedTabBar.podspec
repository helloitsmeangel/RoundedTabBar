Pod::Spec.new do |s|

  s.name         = "RoundedTabBar"
  s.version      = "1.0.0"
  s.summary      = "A custom tab bar for iOS."

  s.description  = <<-DESC
  RoundedTabBar allows you to enhance your UI with a custom tab bar. This is not a tab bar made from scratch, this modifies the existing UITabBarController.
  
  Users are able to specify the icon and title of each tab bar item.
  
  This custom tab bar floats above the bottom of the screen. Each tab bar item shows the icon in the middle of the tab. When a tab is selected, the title appears through an animation. There is also a view that moves along the top of the tab bar that indicates a selected tab.
                   DESC

  s.homepage     = "https://github.com/helloitsmeangel/RoundedTabBar"

  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author       = "helloitsmeangel"
  
  s.swift_versions = ['5.0']

  s.platform     = :ios, "15.0"

  s.source       = { :git => "https://github.com/helloitsmeangel/RoundedTabBar.git", :tag => s.version }
  s.source_files  = ["Sources/**/*.swift"]

end
