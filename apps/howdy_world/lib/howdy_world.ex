defmodule HowdyWorld do
  def message do
    message = HelloWorld.message
    String.replace(HelloWorld.message, "Hello", "Howdy")
  end
end
