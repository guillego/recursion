# Recursion

Reading Gödel, Escher, Bach I enjoyed the recursive dialogue "Little Harmonic Labyrinth" and the chapter that followed on recursion.

So I decided to implement my own RTN to descrive the Ornate Noun and the Fancy Noun.


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
iex(1)> Recursion.generate_ornate_noun
"a funky crazy whimsical ninny"
iex(2)> Recursion.generate_ornate_noun
"a silly cockamamie peculiar garden"
iex(3)> Recursion.generate_ornate_noun
"a lunatic silence"
iex(4)> Recursion.generate_ornate_noun
"zany nutty oddball knife"
iex(5)> Recursion.generate_ornate_noun
"unperturbed wharf"
iex(6)> Recursion.generate_ornate_noun
"the mysterious snotty enigmatic freaky surreal quirky echo"
```

### Fancy noun
iex(9)> Recursion.generate_fancy_noun
"the genuine fire"
iex(10)> Recursion.generate_fancy_noun
"cringeworthy car"
iex(11)> Recursion.generate_fancy_noun
"a fool"
iex(12)> Recursion.generate_fancy_noun
"erratic magical reckless door below a heart"
iex(13)> Recursion.generate_fancy_noun
"a graceful dark romantic reckless sincere tomb"
iex(14)> Recursion.generate_fancy_noun
"mindless oddball wallet"
iex(15)> Recursion.generate_fancy_noun
"a daft mystical music"
iex(16)> Recursion.generate_fancy_noun
"bizarre tomb after a daffy klutz"
iex(17)> Recursion.generate_fancy_noun
"the vulnerable scatterbrain beneath the riddle"
iex(18)> Recursion.generate_fancy_noun
"unconventional hat during fragile strange hope for elusive rascal until a wacko wacky nincompoop"
