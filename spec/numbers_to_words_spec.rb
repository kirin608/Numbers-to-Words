require_relative '../numbers_to_words'

RSpec.describe('#numbers_to_words') do
describe 'numbers_to_words' do
it ("returns a word for a entered number") do
    expect(numbers_to_words(1)).to(eq("one"))
end
it ("returns a word for a entered number") do
    expect(numbers_to_words(3)).to(eq("three"))
end
it ("returns a word for a entered number") do
    expect(numbers_to_words(8)).to(eq("eight"))
end
it ("returns a word for a entered number") do
    expect(numbers_to_words(10)).to(eq("ten"))
end
it ("returns a word for a entered number") do
    expect(numbers_to_words(20)).to(eq("twenty"))
end
it ("returns a word for a entered number") do
    expect(numbers_to_words(33)).to(eq("thirty three"))
end
it ("returns a word for a entered number") do
    expect(numbers_to_words(78)).to(eq("seventy eight"))
end
it ("returns a word for a entered number") do
    expect(numbers_to_words(234)).to(eq("two hundred thirty four"))
end
it ("returns a word for a entered number") do
    expect(numbers_to_words(384)).to(eq("three hundred eighty four"))
end
end
end