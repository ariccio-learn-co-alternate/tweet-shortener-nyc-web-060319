# Write your code here.

def dictionary
  dict = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter(tweet)
  tweet_words = tweet.split(" ")
  tweet_words.each_with_index do |word_in_tweet, index|
    if dictionary.include?(word_in_tweet)
      tweet_words[index] = dictionary[word_in_tweet]
    end
  end
  tweet_words.join(" ")
end

def bulk_tweet_shortener(tweets)
  tweets.each_with_index do |tweet, index|
    tweets[index] = word_substituter(tweet)
  end
  tweets
end


