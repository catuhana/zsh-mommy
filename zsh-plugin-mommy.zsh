#!/usr/bin/env zsh

MOMMY_RESPONSE_TYPES=(POSITIVE NEGATIVE)
MOMMY_POSITIVE_RESPONSES=(
  '*pets your head*'
  'you'\''re such a smart cookie~ ❤️'
  'that'\''s a good {AFFECTIONATE_TERM}~ ❤️'
  '{MOMMYS_ROLE} thinks {MOMMYS_PRONOUN} litle {AFFECTIONATE_TERM} earned a big hug~ ❤️'
  'good {AFFECTIONATE_TERM}~\n{MOMMYS_ROLE}'\''s so proud of you~ ❤️'
  'awe, what a good {AFFECTIONATE_TERM}~\n{MOMMYS_ROLE} knew you could do it~ ❤️'
  'that'\''s a good {AFFECTIONATE_TERM}~ ❤️'
  '{MOMMYS_ROLE} is so proud of {MOMMYS_PRONOUN} {AFFECTIONATE_TERM}~ ❤️'
)
MOMMY_NEGATIVE_RESPONSES=(
  '{MOMMYS_ROLE} believes in you~ ❤️'
  'do you need {MOMMYS_ROLE}'\''s help~? ❤️'
  '{MOMMYS_ROLE} still loves you no matter what~ ❤️'
  'oh no did {MOMMYS_ROLE}'\''s little {AFFECTIONATE_TERM} made a big mess~? ❤️'
  '{MOMMYS_ROLE} knows {MOMMYS_PRONOUN} little {AFFECTIONATE_TERM} can do better~ ❤️'
  'just a little further, sweetie~ ❤️'
  '{MOMMYS_ROLE} believes in you~ ❤️'
  'let'\''s try again together my {AFFECTIONATE_TERM}~ ❤️'
  '{MOMMYS_ROLE} is here to help you through it~ ❤️'
)

MOMMY_AFFECTIONATE_TERM_PLACEHOLDER='{AFFECTIONATE_TERM}'
MOMMY_PRONOUN_PLACEHOLDER='{MOMMYS_PRONOUN}'
MOMMY_MOMMYS_ROLE_PLACEHOLDER='{MOMMYS_ROLE}'

MOMMY_AFFECTIONATE_TERM=(girl)
MOMMY_PRONOUN=(her)
MOMMY_MOMMYS_ROLE=(mommy)

precmd_functions+=_plugin_mommy

_plugin_mommy() {
  if [[ $? -eq 0 ]]; then
    print $(create_response ${MOMMY_RESPONSE_TYPES[1]})
  else
    print $(create_response ${MOMMY_RESPONSE_TYPES[2]})
  fi
}

create_response() {
  local random_affectionate_term=$(pick_random_value $MOMMY_AFFECTIONATE_TERM)
  local random_pronoun=$(pick_random_value $MOMMY_PRONOUN)
  local random_role=$(pick_random_value $MOMMY_MOMMYS_ROLE)

  if [[ ${@[1]} == ${MOMMY_RESPONSE_TYPES[1]} ]]; then
    local random_response=$(pick_random_value $MOMMY_POSITIVE_RESPONSES)
  else
    local random_response=$(pick_random_value $MOMMY_NEGATIVE_RESPONSES)
  fi
  random_response=$(replace_placeholders $random_response $random_affectionate_term $random_pronoun $random_role)

  print "$random_response"
}

replace_placeholders() {
  local response=${@[1]}
  response=${response//$MOMMY_AFFECTIONATE_TERM_PLACEHOLDER/${@[2]}}
  response=${response//$MOMMY_PRONOUN_PLACEHOLDER/${@[3]}}
  response=${response//$MOMMY_MOMMYS_ROLE_PLACEHOLDER/${@[4]}}
  print "$response"
}

pick_random_value() {
  local values=($@)
  local random_seed=$(date +%N)
  local random_index=$((random_seed % ${#values[@]} + 1))
  print ${values[random_index]}
}
