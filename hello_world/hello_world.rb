class HelloWorld
  def self.hello(name = 'World')
    if name == ""
      name = "world"
    end
    "Hello, #{name}!"
  end
end
