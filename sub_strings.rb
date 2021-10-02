#Implement a method #substrings that takes a word as the first argument 
#and then an array of valid substrings (your dictionary) as the second argument. 
#It should return a hash listing each substring (case insensitive) that was 
#found in the original string and how many times it was found.

def sub_strings(arr,text)
    text = text.downcase
    result = Hash.new(0)
    arr.each do |word|
        result[word] +=  1 unless text.scan(word.downcase).empty?
    end
    result
end

dict = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
sub_strings(dict, "Howdy partner, sit down! How's it going?")
