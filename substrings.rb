# expected output:
#
# > substrings("Howdy partner, sit down! How's it going?", dictionary)
# => { "down" => 1, "go" => 1, "going" => 1, "how" => 2, "howdy" => 1, "it" => 2, "i" => 3, "own" => 1, "part" => 1, "partner" => 1, "sit" => 1 }

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]


def substrings(text, dictionary)
    result = Hash.new(0)
    lowered_text = text.downcase
  
    dictionary.each do |word|
      matches = lowered_text.scan(word).length
      result[word] = matches unless matches == 0
    end
  
    return result
  end


p substrings("Howdy partner, sit down! How's it going?", dictionary)
