#!/usr/bin/env zsh

autoload -Uz add-zsh-hook

ZSH_MOMMY_RESPONSE_TYPES=(POSITIVE NEGATIVE)
ZSH_MOMMY_POSITIVE_RESPONSES=(
  '*pets your head*'
  $'you\'re such a smart cookie~ ❤️'
  $'that\'s a good {AFFECTIONATE_TERM}~ ❤️'
  '{MOMMYS_ROLE} thinks {MOMMYS_PRONOUN} litle {AFFECTIONATE_TERM} earned a big hug~ ❤️'
  $'good {AFFECTIONATE_TERM}~\n{MOMMYS_ROLE}\'s so proud of you~ ❤️'
  'awe, what a good {AFFECTIONATE_TERM}~\n{MOMMYS_ROLE} knew you could do it~ ❤️'
  $'that\'s a good {AFFECTIONATE_TERM}~ ❤️'
  '{MOMMYS_ROLE} is so proud of {MOMMYS_PRONOUN} {AFFECTIONATE_TERM}~ ❤️'
)
ZSH_MOMMY_NEGATIVE_RESPONSES=(
  '{MOMMYS_ROLE} believes in you~ ❤️'
  $'do you need {MOMMYS_ROLE}\'s help~? ❤️'
  '{MOMMYS_ROLE} still loves you no matter what~ ❤️'
  $'oh no did {MOMMYS_ROLE}\'s little {AFFECTIONATE_TERM} made a big mess~? ❤️'
  '{MOMMYS_ROLE} knows {MOMMYS_PRONOUN} little {AFFECTIONATE_TERM} can do better~ ❤️'
  'just a little further, sweetie~ ❤️'
  '{MOMMYS_ROLE} believes in you~ ❤️'
  $'let\'s try again together my {AFFECTIONATE_TERM}~ ❤️'
  '{MOMMYS_ROLE} is here to help you through it~ ❤️'
)

ZSH_MOMMY_AFFECTIONATE_TERM_PLACEHOLDER='{AFFECTIONATE_TERM}'
ZSH_MOMMY_MOMMYS_PRONOUN_PLACEHOLDER='{MOMMYS_PRONOUN}'
ZSH_MOMMY_MOMMYS_ROLE_PLACEHOLDER='{MOMMYS_ROLE}'

ZSH_MOMMY_AFFECTIONATE_TERM=(girl)
ZSH_MOMMY_MOMMYS_PRONOUN=(her)
ZSH_MOMMY_MOMMYS_ROLE=(mommy)

ZSH_MOMMY_RUN_AFTER_EVERY_COMMAND=true

# ZSH_MOMMY_COLOURED_RESPONSES=true
# ZSH_MOMMY_FORCE_COLOURED_RESPONSES=false
ZSH_MOMMY_RESPONSE_COLOUR=(255 179 204)

if [[ $ZSH_MOMMY_RUN_AFTER_EVERY_COMMAND == true || $ZSH_MOMMY_RUN_AFTER_EVERY_COMMAND -ge 1 ]] {
  add-zsh-hook precmd _mommy
} else {
  add-zsh-hook -d precmd _mommy

  function mommy {
    "$@" ; _mommy $?
  }
}

function _mommy {
  local command_status=${1:-$?}
  local response_type_index=$((command_status == 0 ? 1 : 2))

  if [[ ! $COLORTERM =~ ^(truecolor|24bit)$ ]] || [[ $NO_COLOR == true || $NO_COLOR -ge 1 ]] && [[ $ZSH_MOMMY_FORCE_COLOURED_RESPONSES == false || $ZSH_MOMMY_FORCE_COLOURED_RESPONSES -eq 0 ]]; then
    ZSH_MOMMY_COLOURED_RESPONSES=false
  fi

  print $(create_response ${ZSH_MOMMY_RESPONSE_TYPES[$response_type_index]})
}

function precmd {
  : $RANDOM
}

function create_response {
  local response

  local random_affectionate_term=$(pick_random_value $ZSH_MOMMY_AFFECTIONATE_TERM)
  local random_pronoun=$(pick_random_value $ZSH_MOMMY_MOMMYS_PRONOUN)
  local random_role=$(pick_random_value $ZSH_MOMMY_MOMMYS_ROLE)

  if [[ $1 == ${ZSH_MOMMY_RESPONSE_TYPES[1]} ]] {
    response=$(pick_random_value $ZSH_MOMMY_POSITIVE_RESPONSES)
  } else {
    response=$(pick_random_value $ZSH_MOMMY_NEGATIVE_RESPONSES)
  }

  response=$(replace_placeholders $response $random_affectionate_term $random_pronoun $random_role)

  if [[ $ZSH_MOMMY_COLOURED_RESPONSES == true || $ZSH_MOMMY_COLOURED_RESPONSES -eq 1 ]] {
    response="$(colourise_response $response)"
  }

  print "$response"
}

function replace_placeholders {
  local response=${@[1]}

  response=${response//$ZSH_MOMMY_AFFECTIONATE_TERM_PLACEHOLDER/${@[2]}}
  response=${response//$ZSH_MOMMY_MOMMYS_PRONOUN_PLACEHOLDER/${@[3]}}
  response=${response//$ZSH_MOMMY_MOMMYS_ROLE_PLACEHOLDER/${@[4]}}

  print "$response"
}

function pick_random_value {
  local values=($@)
  local random_index=$((RANDOM % ${#values[@]} + 1))
  print ${values[random_index]}
}

function colourise_response {
  print "\e[38;2;$(array_to_ansi_rgb $ZSH_MOMMY_RESPONSE_COLOUR);1m$1\e[0m"
}

function array_to_ansi_rgb {
  print "${(j|;|)@[1,3]}"
}
