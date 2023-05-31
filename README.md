# ZSH Mommy~ ❤️

<sup>Inspiwed fwom [Gankra/cargo-mommy](https://github.com/Gankra/cargo-mommy) :3 ❤️</sup>

Mommy is h-h-hewe t-to suppowt you when you'we wunnying commands \<3

## Instawwation~

<details>
  <summary>Manyuawwy~</summary>

  Cwonye the Git wepositowy~

  ```sh
  git clone https://github.com/tuhanayim/zsh-mommy.git
  ```

  Souwce i-it t-to youw `.zshwc` OwO

  ```sh
  echo 'source "${(q-)PWD}/zsh-mommy/zsh-mommy.zsh"' >>${ZDOTDIR:-$HOME}/.zshrc
  ```

  And wewoad youw sheww >///<
</details>

<details>
  <summary>P-Pwugin Fwamewowks~</summary>

  ### Oh My ZSH

  Cwonye Git wepositowy into `~/.oh-my-zsh/custom` nya~

  ```sh
  git clone https://github.com/tuhanayim/zsh-mommy.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-mommy
  ```

  Add pwugin t-to `plugins` vawiabwe in `.zshrc` ^-^

  ```sh
  plugins=(zsh-mommy)
  ```

  ### zimfw

  Add `zmodule tuhanayim/zsh-mommy` t-to youw `.zimrc` and wun `zimfw install` :3

  ### zgen/zplugin

  Add `zgen/zplugin load tuhanayim/zsh-mommy` t-to youw `.zshrc`~

  ### Antigen

  Add `antigen bundle tuhanayim/zsh-mommy` t-to youw `.zshrc` ;;w;;
</details>

## Customisation~

- `MOMMY_AFFECTIONATE_TERM` - what t-to caww you, cutie :3 (defauwt: girl)
- `MOMMY_MOMMYS_PRONOUN` - what pwonyouns mommy wiww use fow themsewf \<3 (defauwt: her)
- `MOMMY_MOMMYS_ROLE` - what wowe mommy wiww have UwU (defauwt: mommy)

To add nyew tewms/pwonyouns/wowes t-to mommy, simpwy add these t-to youw `.zshwc`~

```sh
ZSH_MOMMY_AFFECTIONATE_TERM+=(cat cutie)
ZSH_MOMMY_MOMMYS_PRONOUN+=(their its)
ZSH_MOMMY_MOMMYS_ROLE+=(owner)
```
