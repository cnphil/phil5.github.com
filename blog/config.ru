require 'shinmun'

use Rack::Session::Cookie
use Rack::Reloader

blog = Shinmun::Blog.new(File.dirname(__FILE__))

blog.config = {
  :language => 'en',
  :title => "扑通一声",
  :author => "Phil",
  :categories => ["default"],
  :description => "惊起蛙声一片"
}

run blog
