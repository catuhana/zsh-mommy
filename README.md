# ZSH Mommy~ ❤️

<sup>Inspired from [Gankra/cargo-mommy](https://github.com/Gankra/cargo-mommy), made for your shell! ❤️</sup>

Mommy is here to support you when you're running commands~

## Installation

<details>
  <summary>Manually</summary>

  Clone the Git repository

  ```sh
  git clone https://github.com/catuhana/zsh-mommy
  ```

  and source it to your .zshrc

  ```sh
  echo 'source "${(q-)PWD}/zsh-mommy/zsh-mommy.zsh"' >>${ZDOTDIR:-$HOME}/.zshrc
  ```

  and then reload your shell for mommy! ❤️
</details>

<details>
  <summary>Plugin Frameworks</summary>

  ### Oh My ZSH

  Clone the Git repository to `~/.oh-my-zsh/custom`

  ```sh
  git clone https://github.com/catuhana/zsh-mommy ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-mommy
  ```

  and add it to your `plugins` array in `.zshrc`

  ```zsh
  plugins=(zsh-mommy)
  ```

  ### Zim

  Add `zmodule catuhana/zsh-mommy` to your `.zimrc` and run `zimfw install`

  ### zgen/zplugin

  Add `zgen/zplugin load catuhana/zsh-mommy` to your `.zshrc`

  ### Antigen

  Add `antigen bundle catuhana/zsh-mommy` to your `.zshrc`
</details>

## Customisation

To customise the plugin, you can edit variables the plugin uses after the plugin is loaded.

For example, to apppend or change new pronouns or affectionate terms, you can add:

```sh
ZSH_MOMMY_AFFECTIONATE_TERM+=(cat cutie)
ZSH_MOMMY_MOMMYS_ROLE=(owner)
```

Or if you want it to be for your current shell only, you can define them with `export`.

### Add Your Own Responses

If you have more response ideas for mommy, or if there's a response you want to remove, you can update `ZSH_MOMMY_POSITIVE_RESPONSES` or `ZSH_MOMMY_POSITIVE_RESPONSES` arrays.

> [!TIP]
> I would appreciate if you contribute your own responses to mommy! Just make sure that they fit the theme of current responses.

Current response arrays:

- `ZSH_MOMMY_POSITIVE_RESPONSES`
- `ZSH_MOMMY_NEGATIVE_RESPONSES`

### Add Prefix or Suffix to Responses

If you'd like mommy to be more cheerful, you can add emojis or text before or after mommy's actual responses.

- `ZSH_MOMMY_RESPONSES_PREFIX` - prefix before mommy's actual response (default: ``)
- `ZSH_MOMMY_RESPONSES_SUFFIX` - suffix after mommy's actual response (default: `❤️`)

### Coloured Responses

If you want mommy to be more colourful, you can set `ZSH_MOMMY_COLOURED_RESPONSES` to `true` or `1`, which is the default. The colour of the response is also customisable.

- `ZSH_MOMMY_COLOURED_RESPONSES` - make mommy more colourful (default: `true`)
- `ZSH_MOMMY_RESPONSE_COLOUR` - decide what colour mommy should use (default: `(255 179 204)`)

### Terms, Pronouns and Roles

- `ZSH_MOMMY_AFFECTIONATE_TERM` - what mommy calls you (default: `(girl)`)
- `ZSH_MOMMY_MOMMYS_PRONOUN` - what mommy will use as their pronouns (default: `(her)`)
- `ZSH_MOMMY_MOMMYS_ROLE` - the role of mommy (default: `(mommy)`)

### When to Run Mommy

If you want mommy to response on demand instead, you can set `ZSH_MOMMY_RUN_AFTER_EVERY_COMMAND` variable to `false` or `0` before the plugin is loaded. This will create a new function named `mommy`, which accepts your normal command input and runs them.

```sh
mommy vim ~/.zshrc
mommy git push -f
```
