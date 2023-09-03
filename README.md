# Recursion

Reading Gödel, Escher, Bach I enjoyed the recursive dialogue "Little Harmonic Labyrinth" and the chapter that followed on recursion.

So I decided to implement my own RTN to describe the Ornate Noun and the Fancy Noun.


## To run
Ensure you have Erlang/Elixir installed

```
$ iex -S mix

iex> Recursion.generate_ornate_noun
iex> Recursion.generate_fancy_noun

```

## Examples

### Ornate noun
```
iex> Recursion.generate_ornate_noun
"a funky crazy whimsical ninny"
iex> Recursion.generate_ornate_noun
"a silly cockamamie peculiar garden"
iex> Recursion.generate_ornate_noun
"a lunatic silence"
iex> Recursion.generate_ornate_noun
"zany nutty oddball knife"
iex> Recursion.generate_ornate_noun
"unperturbed wharf"
iex> Recursion.generate_ornate_noun
"the mysterious snotty enigmatic freaky surreal quirky echo"
```

### Fancy noun
```
iex> Recursion.generate_fancy_noun
"a broken nonsensical fork"
iex> Recursion.generate_fancy_noun
"ineffable mindless dunderhead regarding the lunatic flower whose immortal ninny whichever a loony rascal darted ambled"
iex> Recursion.generate_fancy_noun
"the genuine fire"
iex> Recursion.generate_fancy_noun
"cringeworthy car"
iex> Recursion.generate_fancy_noun
"a fool"
iex> Recursion.generate_fancy_noun
"erratic magical reckless door below a heart"
iex> Recursion.generate_fancy_noun
"a graceful dark romantic reckless sincere tomb"
iex> Recursion.generate_fancy_noun
"mindless oddball wallet"
iex> Recursion.generate_fancy_noun
"a daft mystical music"
iex> Recursion.generate_fancy_noun
"bizarre tomb after a daffy klutz"
iex> Recursion.generate_fancy_noun
"the vulnerable scatterbrain beneath the riddle"
iex> Recursion.generate_fancy_noun
"unconventional hat during fragile strange hope for elusive rascal until a wacko wacky nincompoop"
```