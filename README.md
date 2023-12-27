# ZSH Mommy~ ❤️

<sup>Inspiwed fwom [Gankra/cargo-mommy](https://github.com/Gankra/cargo-mommy) :3 ❤️</sup>

Mommy is h-h-hewe t-to suppowt you when you'we wunnying commands \<3

## Instawwation~

<details>
  <summary>Manyuawwy~</summary>

Cwonye the Git wepositowy~

```sh
git clone https://github.com/catuhana/zsh-mommy.git
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
git clone https://github.com/catuhana/zsh-mommy.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-mommy
```

Add pwugin t-to `plugins` vawiabwe in `.zshrc` ^-^

```sh
plugins=(zsh-mommy)
```

### zimfw

Add `zmodule catuhana/zsh-mommy` t-to youw `.zimrc` and wun `zimfw install` :3

### zgen/zplugin

Add `zgen/zplugin load catuhana/zsh-mommy` t-to youw `.zshrc`~

### Antigen

Add `antigen bundle catuhana/zsh-mommy` t-to youw `.zshrc` ;;w;;

</details>

## Customisation~

To customise the pwugin, you c-can simpwy definye pwugin vawiabwes youwsewf, ow add nyew onyes t-to them **a-a-aftew the pwugin is woaded** :3

Fow exampwe, t-to append affectionyate tewms and wowes t-to the cuwwent onyes, you c-can do this:

```sh
ZSH_MOMMY_AFFECTIONATE_TERM+=(cat cutie)
ZSH_MOMMY_MOMMYS_ROLE+=(owner)
```

### Tewms/Tewms/Wowes~

- `ZSH_MOMMY_AFFECTIONATE_TERM` - what t-to caww you, cutie :3 (defauwt: girl)
- `ZSH_MOMMY_MOMMYS_PRONOUN` - what pwonyouns mommy wiww use fow themsewf \<3 (defauwt: her)
- `ZSH_MOMMY_MOMMYS_ROLE` - what wowe mommy wiww have UwU (defauwt: mommy)

### When t-to Wun Mommy >///<

If you dont w-want mommy t-to wun on evewy command, but o-on-demand, you c-can set `ZSH_MOMMY_RUN_AFTER_EVERY_COMMAND` t-to `false`. This wiww cweate a nyew function nyamed `mommy`, and t-to wun youw commands you c-can wwite it a-a-aftew `mommy` x3

```sh
mommy git status
mommy vi ~/.zshrc
```

### Cowouwed W-W-Wesponses (\* ^ ω ^)

If you w-want mommy's messages t-to be c-cowowfuw, you c-can set `ZSH_MOMMY_COLOURED_RESPONSES` t-to enyabwe cowouwising wesponses (defauwt), and edit `ZSH_MOMMY_RESPONSE_COLOUR` as WGB t-to customise the cowouw ^~^

- `ZSH_MOMMY_COLOURED_RESPONSES` - enyabwe cowouwising wesponses ow nyot! (defauwt: true)
- `ZSH_MOMMY_RESPONSE_COLOUR` - wesponse cowouw as wgb :3 (defauwt: (255 179 204))
