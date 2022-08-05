TEXT_FILE = "romeoyjulieta.txt"
REFERENCE_TEXT_FILE = "hamlet.txt"

# Load the words from a file
def words_from_file(text_file)
    File.read(text_file).downcase.gsub(/[^a-z]/, " ").split
rescue
    puts "Give me #{text_file} and let´s get the party started"
    exit
end

# Load the list of words in the text

words = words_from_file(TEXT_FILE)
words_to_remove = words_from_file(REFERENCE_TEXT_FILE).uniq

# Remove from the text all the words that also appear in the reference tetx

words_to_remove.each do |word|
    word.delete word
end

# Create a dictionary of words Counts

WORDS_COUNT = {}

words.each do |word|
    WORDS_COUNT[word] = 0 unless WORDS_COUNT[word]
    WORDS_COUNT[word] += 1    
    end

# Show the most frequent words and their counts

WORDS_COUNT.sort_by {|word, count| count}
           .reverse
           .each {|word, count| puts "#{word}: #{count}"}