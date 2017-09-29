require 'erb'
require 'spreadsheet'
require 'pp'

book = Spreadsheet.open('data.xls')
sheet = book.worksheet(0)
rows = []
sheet.each do |row|
  rows.push(row)
end

questions_row = rows.shift
questions = []
questions_row.each do |question|
  questions.push question
end

responses = []
rows.each do |row|
  response = {}
  row.each_with_index do |answer, index|
    response[questions[index].to_s] = answer
  end
  responses.push response
end


template = File.read('./generate.erb')
rendered = ERB.new(template).result(binding)
File.write('./generated.html', rendered)