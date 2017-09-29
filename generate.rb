require 'erb'

template = File.read('./generate.erb')

questions = ['Question 1', 'Question 2', 'Question 3']

rendered = ERB.new(template).result(binding)

File.write('./generated.html', rendered)