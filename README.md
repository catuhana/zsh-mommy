# ZSH Mommy~ ❤️

<sup>Inspired from [Gankra/cargo-mommy](https://github.com/Gankra/cargo-mommy) ❤️</sup>

Mommy is here to support you when you're running commands~

## Installation

<details>
  <summary>Manually :3</summary>

  Clone the Git repository~

  ```sh
  git clone https://github.com/tuhanayim/zsh-mommy.git
  ```

  Source it to your `.zshrc`~

  ```sh
  echo 'source "${(q-)PWD}/zsh-mommy/zsh-mommy.zsh"' >>${ZDOTDIR:-$HOME}/.zshrc
  ```

  And reload your shell~
</details>

<details>
  <summary>Plugin Frameworks :3</summary>

  ### Oh My ZSH

  Clone Git repository into `~/.oh-my-zsh/custom`~

  ```sh
  git clone https://github.com/tuhanayim/zsh-mommy.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-mommy
  ```

  Add plugin to `plugins` variable in `.zshrc`~

  ```sh
  plugins=(zsh-mommy)
  ```

  ### zimfw

  Add `zmodule tuhanayim/zsh-mommy` to your `.zimrc` and run `zimfw install`~

  ### zgen/zplugin

  Add `zgen/zplugin load tuhanayim/zsh-mommy` to your `.zshrc`~

  ### Antigen

  Add `antigen bundle tuhanayim/zsh-mommy` to your `.zshrc`~
</details>

## Customization

- `MOMMY_AFFECTIONATE_TERM` - what to call you~ (default: girl)
- `MOMMY_MOMMYS_PRONOUN` - what pronouns mommy will use for themself~ (default: her)
- `MOMMY_MOMMYS_ROLE` - what role mommy will have~ (default: mommy)

To add new terms/pronouns/roles to mommy, simply add these to your `.zshrc`~

```sh
MOMMY_AFFECTIONATE_TERM+=(honey cat cutie)
MOMMY_MOMMYS_PRONOUN+=(his their)
MOMMY_MOMMYS_ROLE+=(daddy granny)
```
