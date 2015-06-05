# # Topics
#
# * modules
# * strings
#
# # Pig Latin
#
# Pig Latin is a made-up children's language that's intended to be confusing. It obeys a few simple rules (below) but when it's spoken quickly it's really difficult for non-children (and non-native speakerexpect(s) to understand.
#
# Rule 1: If a word begins with a vowel sound, add an "ay" sound to the end of the word.
#
# Rule 2: If a word begins with a consonant sound, move it to the end of the word, and then add an "ay" sound to the end of the word.
#
# (There are a few more rules for edge cases, and there are regional variants too, but that should be enough to understand the tests.)
#
# See <http://en.wikipedia.org/wiki/Pig_latin> for more details.
#
#

require "pig_latin"

describe "#translate" do

  it "translates a word beginning with a vowel" do
    s = translate("apple")
    expect(s) == "appleay"
  end

  it "translates a word beginning with a consonant" do
    s = translate("banana")
    expect(s) == "ananabay"
  end

  it "translates a word beginning with two consonants" do
    s = translate("cherry")
    expect(s) == "errychay"
  end

  it "translates two words" do
    s = translate("eat pie")
    expect(s) == "eatay iepay"
  end

  it "translates a word beginning with three consonants" do
    expect(translate("three")) == "eethray"
  end

  it "counts 'sch' as a single phoneme" do
    s = translate("school")
    expect(s) == "oolschay"
  end

  it "counts 'qu' as a single phoneme" do
    s = translate("quiet")
    expect(s) == "ietquay"
  end

  it "counts 'qu' as a consonant even when it's preceded by a consonant" do
    s = translate("square")
    expect(s) == "aresquay"
  end

  it "translates many words" do
    s = translate("the quick brown fox")
    expect(s) == "ethay ickquay ownbray oxfay"
  end

  # Test-driving bonus:
  # * write a test asserting that capitalized words are still capitalized (but with a different initial capital letter, of course)
  # * retain the punctuation from the original phrase

end
