?

def my_custom_function
  temp_var = yield
  puts temp_var
end

my_custom_function { "my random text is here" }
