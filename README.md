# .emacs.d

## About

This is my personal Clojure preferences folder.

## Installation

I install emacs on my Mac using [emacs-plus][emacs-plus].

```bash
brew tap d12frosted/emacs-plus
brew install emacs-plus@28 --with-no-titlebar --with-xwidgets
```

## Other Requirements

- `clj-kondo` must be on your `$PATH`
- `brew install ag` (for searching)
- `brew install pandoc` (for Markdown mode)

## Using Straight

```
M-x straight-pull-all        # Update all packages
M-x straight-freeze-versions # Write lock file
M-x straight-thaw-versions   # Revert packages to lock file
```

[emacs-plus]: https://github.com/d12frosted/homebrew-emacs-plus
