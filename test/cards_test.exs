defmodule CardsTest do
  use ExUnit.Case
  doctest Cards

  test "ceate_deck" do
    deck = Cards.create_deck()
    assert deck == ["Ace of Spades", "Two of Spades", "Three of Spades",
    "Four of Spades", "Five of Spades", "Ace of Clubs", "Two of Clubs",
    "Three of Clubs", "Four of Clubs", "Five of Clubs", "Ace of Hearts",
    "Two of Hearts", "Three of Hearts", "Four of Hearts",
    "Five of Hearts", "Ace of Diamonds", "Two of Diamonds",
    "Three of Diamonds", "Four of Diamonds", "Five of Diamonds"]

    assert length(deck) == 20
  end

  test "shuffling a deck randomizes it" do
    deck = Cards.create_deck()
    assert deck != Cards.shuffle(deck)
  end

end
