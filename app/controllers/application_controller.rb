class ApplicationController < ActionController::Base
  def hello
    render html: "hello, world!<br>kakikukeko"
  end
end
