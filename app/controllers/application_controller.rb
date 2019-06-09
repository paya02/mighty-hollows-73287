class ApplicationController < ActionController::Base
  def hello
    render html: "hello, world!aiueo"
  end
end
