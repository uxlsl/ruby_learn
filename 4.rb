# 块的学习!
def my_method(&my_block)
    puts "we're in the method, about to invoke you block"
    my_block.call
    puts "we're back in the method"
end


# 调用方法 并传入一个块!
my_method do
    puts "It's a block party!"
end


def twice(&my_block)
    puts "twice"
    my_block.call
    puts "1"
    my_block.call
    puts "end"
end


twice do 
    puts "hello"
end

# 使用yield 简化拼写
def twice1(&my_block)
    puts "twice1"
    yield
    puts "1"
    yield
    puts "end"
end


twice1 do 
    puts "hello"
end


def take_this
    yield "present"
end

# 使用参数
take_this do |thing|
    puts "do/end block got #{thing}"
end
