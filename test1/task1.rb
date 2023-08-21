
class Books
  @@books=[]
  @@id = 0

  def initialize(name: 'undefined',description: 'umdefined')
    @@id += 1
    @id = @@id
    @name=name
    @description=description
    @@books << {id: @id,name: @name,description: @description}
  end

  def  self.display
    @@books
  end

end


b1=Books.new(name: "js", description: "about js")
b2=Books.new(name: "phython")
b3=Books.new(description: "about java")
b4=Books.new(description: "ruby", name: "about ruby")

Books.display.each do |b|
  puts "id : #{b[:id]}, name: #{b[:name]}, description: #{b[:description]}"
end

Books.display
books = Books.display
book = books[1]
p book[:name]

# create a config files with keys = size, number_of_targets, draws, 0000
# write a method to mimic a card draw equal to the amount of times in specified in draws
# if you "draw" your target card atleast once, return true, else return false

# hint: you can use an array to represent the deck, in fill it with true and false values to represent target and normal cards