# ZSH Mommy

Inspired from [Gankra/cargo-mommy](https://github.com/Gankra/cargo-mommy)~ ❤️

Mommy is here to support you when you're running commands~

## Installation

<details>
  <summary>Manually</summary>

  Clone Git repository~

  ```sh
  git clone https://github.com/tuhanayim/zsh-plugin-mommy.git
  ```

  Source it to your `.zshrc`~

  ```sh
  echo 'source "${(q-)PWD}/zsh-plugin-mommy/zsh-plugin-mommy.zsh"' >>${ZDOTDIR:-$HOME}/.zshrc
  ```

  And reload your shell~
</details>

<details>
  <summary>Plugin Frameworks</summary>

  ### Oh My ZSH

  Clone Git repository into `~/.oh-my-zsh/custom`~

  ```sh
  git clone https://github.com/tuhanayim/zsh-plugin-mommy.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-plugin-mommy
  ```

  Add plugin to `plugins` variable in `.zshrc`~

  ```sh
  plugins=(zsh-plugin-mommy)
  ```

  ### zimfw

  Add `zmodule tuhanayim/zsh-plugin-mommy` to your `.zimrc` and run `zimfw install`~

  ### zgen/zplugin

  Add `zgen/zplugin load tuhanayim/zsh-plugin-mommy` to your `.zshrc`~

  ### Antigen

  Add `antigen bundle tuhanayim/zsh-plugin-mommy` to your `.zshrc`~
</details>
