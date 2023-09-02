defmodule Recursion.Lang.Noun do
  @words [
    "table",
    "chair",
    "book",
    "phone",
    "computer",
    "lamp",
    "coffee",
    "pen",
    "door",
    "window",
    "car",
    "bicycle",
    "shoes",
    "cat",
    "dog",
    "flower",
    "guitar",
    "music",
    "clock",
    "wallet",
    "bag",
    "tree",
    "television",
    "sun",
    "moon",
    "cloud",
    "river",
    "ocean",
    "friend",
    "family",
    "food",
    "water",
    "camera",
    "mirror",
    "key",
    "notebook",
    "hat",
    "garden",
    "jacket",
    "hat",
    "shirt",
    "pants",
    "socks",
    "cup",
    "spoon",
    "fork",
    "knife",
    "plate",
    "house",
    "rascal",
    "nincompoop",
    "scoundrel",
    "buffoon",
    "misfit",
    "klutz",
    "mischief",
    "hooligan",
    "dunce",
    "weirdo",
    "whippersnapper",
    "loon",
    "oddball",
    "ruffian",
    "imbecile",
    "ninny",
    "doofus",
    "ninnyhammer",
    "scatterbrain",
    "klutz",
    "goofball",
    "dunderhead",
    "blockhead",
    "ninny",
    "knucklehead",
    "nincompoop",
    "scatterbrain",
    "fool",
    "ninnyhammer",
    "rascal",
    "dolt",
    "bumbler",
    "doofus",
    "scallywag",
    "blackguard",
    "miscreant",
    "scalawag",
    "ninny",
    "ruffian",
    "buffoon",
    "whippersnapper",
    "rascal",
    "dunderhead",
    "knucklehead",
    "klutz",
    "dunce",
    "misfit",
    "loon",
    "imbecile",
    "raven",
    "gloom",
    "tomb",
    "chamber",
    "dream",
    "night",
    "madness",
    "horror",
    "sorrow",
    "phantom",
    "sepulcher",
    "candle",
    "midnight",
    "mystery",
    "murder",
    "castle",
    "serpent",
    "demon",
    "masque",
    "death",
    "terror",
    "shadow",
    "soul",
    "crypt",
    "whisper",
    "haunting",
    "echo",
    "abyss",
    "riddle",
    "dreamer",
    "specter",
    "silence",
    "apparition",
    "pallor",
    "despair",
    "nightmare",
    "blackness",
    "obsession",
    "vengeance",
    "pit",
    "wharf",
    "rune",
    "serenade",
    "suspicion",
    "dirge",
    "desolation",
    "decay",
    "redemption"
  ]

  def get do
    @words
    |> Enum.random()
  end
end
