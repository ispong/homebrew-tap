# Ispong Tap

## How do I install these formulae?

`brew install ispong/tap/<formula>`

Or `brew tap ispong/tap` and then `brew install <formula>`.

Or, in a `brew bundle` `Brewfile`:

```ruby
tap "ispong/tap"
brew "<formula>"
```

## Documentation

`brew help`, `man brew` or check [Homebrew's documentation](https://docs.brew.sh).


## 升级文档

```bash
tap "ispong/tap"
cd "$(brew --repository ispong/homebrew-tap)"
code Formula/isx.rb

git add Formula/isx.rb
git commit -m "Update isx to 1.1.4"
git push
```
