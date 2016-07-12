Pod::Spec.new do |s|

  s.name         = "TYTableView"
  s.version      = "0.0.2"
  s.summary      = "A deep package for UITableView."

  s.description  = <<-DESC
                   A longer description of TYTableView in Markdown format.

                   * A deep package for UITableView using MVC model,
                   * Simplify the amount of code to use UITableView.
                   DESC

  s.homepage     = "https://github.com/chengdonghai/TYTableView"
  s.license      = { :type => "MIT", :file => "LICENSE" }

  s.author             = { "Donghai Cheng" => "dong723232@gmail.com" }

  s.source       = { :git => "https://github.com/chengdonghai/TYTableView.git", :tag => "0.0.2" }

  s.source_files  = "TYTableViewProj/TYTableView","TYTableViewProj/TYTableView/*.{h,m}"

  s.public_header_files = "TYTableViewProj/TYTableView/*.h"

  s.requires_arc = true
  s.platform     = :ios, "6.0"
end
