#!/usr/bin/env zsh

MOMMY_RESPONSE_TYPES=(POSITIVE NEGATIVE)
MOMMY_POSITIVE_RESPONSES=(
  '*pets your head*'
  'you'\''re such a smart cookie~ ❤️'
  'that'\''s a good {AFFECTIONATE_TERM}~ ❤️'
  '{MOMMYS_ROLE} thinks {PRONOUN} litle {AFFECTIONATE_TERM} earned a big hug~ ❤️'
  'good {AFFECTIONATE_TERM}~\n{MOMMYS_ROLE}'\''s so proud of you~ ❤️'
  'awe, what a good {AFFECTIONATE_TERM}~\n{MOMMYS_ROLE} knew you could do it~ ❤️'
  'that'\''s a good {AFFECTIONATE_TERM}~ ❤️'
  '{MOMMYS_ROLE} is so proud of {PRONOUN} {AFFECTIONATE_TERM}~ ❤️'
)

MOMMY_NEGATIVE_RESPONSES=(
  '{MOMMYS_ROLE} believes in you~ ❤️'
  'do you need {MOMMYS_ROLE}'\''s help~? ❤️'
  '{MOMMYS_ROLE} still loves you no matter what~ ❤️'
  'oh no did {MOMMYS_ROLE}'\''s little {AFFECTIONATE_TERM} made a big mess~? ❤️'
  '{MOMMYS_ROLE} knows {PRONOUN} little {AFFECTIONATE_TERM} can do better~ ❤️'
  'just a little further, sweetie~ ❤️'
  '{MOMMYS_ROLE} believes in you~ ❤️'
  'let'\''s try again together my {AFFECTIONATE_TERM}~ ❤️'
  '{MOMMYS_ROLE} is here to help you through it~ ❤️'
)

MOMMY_AFFECTIONATE_TERM_PLACEHOLDER='{AFFECTIONATE_TERM}'
MOMMY_PRONOUN_PLACEHOLDER='{PRONOUN}'
MOMMY_MOMMYS_ROLE_PLACEHOLDER='{MOMMYS_ROLE}'

MOMMY_AFFECTIONATE_TERM=(girl)
MOMMY_PRONOUN=(her)
MOMMY_MOMMYS_ROLE=(mommy)

precmd_functions+=(_mommy)

last_command_exit_status=0
precmd() {
  last_command_exit_status=$?
}

_mommy() {
  RANDOM=$(date +%N)

  if [[ $last_command_exit_status -eq 0 ]]; then
    echo $(replace_placeholders ${MOMMY_RESPONSE_TYPES[1]})
  else
    echo $(replace_placeholders ${MOMMY_RESPONSE_TYPES[2]})
  fi

  return $last_command_exit_status
}

pick_option() {
  local options=($@)
  local index=$((RANDOM % ${#options[@]} + 1))
  echo ${options[index]}
}

pick_response() {
  if [[ $1 == ${MOMMY_RESPONSE_TYPES[1]} ]]; then
    local index=$((RANDOM % ${#MOMMY_POSITIVE_RESPONSES[@]} + 1))
    echo ${MOMMY_POSITIVE_RESPONSES[index]}
  elif [[ $1 == ${MOMMY_RESPONSE_TYPES[2]} ]]; then
    local index=$((RANDOM % ${#MOMMY_NEGATIVE_RESPONSES[@]} + 1))
    echo ${MOMMY_NEGATIVE_RESPONSES[index]}
  fi
}

random_values() {
  local random_affectionate_term=$(pick_option $MOMMY_AFFECTIONATE_TERM)
  local random_pronoun=$(pick_option $MOMMY_PRONOUN)
  local random_mommys_role=$(pick_option $MOMMY_MOMMYS_ROLE)

  echo $random_affectionate_term $random_pronoun $random_mommys_role
}

replace_placeholders() {
  local values=($(random_values))
  local response=$(pick_response $1)

  local replaced_response=${response//$MOMMY_AFFECTIONATE_TERM_PLACEHOLDER/${values[1]}}
  local replaced_response=${replaced_response//$MOMMY_PRONOUN_PLACEHOLDER/${values[2]}}
  local replaced_response=${replaced_response//$MOMMY_MOMMYS_ROLE_PLACEHOLDER/${values[3]}}

  echo $replaced_response
}
