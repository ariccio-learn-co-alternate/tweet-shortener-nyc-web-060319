# Write your code here.

def dictionary
  dict = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "For" => "4",
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
  tweets.each do |tweet|
    tweet = word_substituter(tweet)
    puts tweet
  end
end


def selective_tweet_shortener(tweet)
  if tweet.length < 140
    return tweet
  end
  shortened_tweet = word_substituter(tweet)
  shortened_tweet
end


