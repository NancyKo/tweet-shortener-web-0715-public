# Write your code here.
require 'pry'
def dictionary
{ "hello" => 'hi',
  "to" => '2', 
  "two" => '2', 
  "too" => '2', 
  "for" => '4',
  "four" => '4',
  'be' => 'b',
  'you' => 'u',
  "at" => "@", 
  "and" => "&"}
end

def word_substituter(tweet)
  dictionary.each do |long_word, abbr_word|
    tweet = tweet.gsub(" #{long_word} ", " #{dictionary[long_word]} ") #if tweet.include?(long_word)
    tweet = tweet.gsub( " #{long_word.capitalize} ", " #{dictionary[long_word]} ")
  end
  tweet
end


def bulk_tweet_shortener(tweets)
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter(tweet)
  else 
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  tweet = selective_tweet_shortener(tweet).slice(0, 140)
  # binding.pry
end