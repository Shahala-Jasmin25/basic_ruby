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
