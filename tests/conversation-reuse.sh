#!/usr/bin/env bash
# conversation.sh must call its siblings, not repeat their text: stub them and expect the stubs.
d="$(mktemp -d)"; trap 'rm -rf "$d"' EXIT
cp conversation.sh "$d/"
printf '#!/usr/bin/env bash\necho G-SENTINEL\n' > "$d/greeting.sh"
printf '#!/usr/bin/env bash\necho F-SENTINEL\n' > "$d/farewell.sh"
[ "$(bash "$d/conversation.sh")" = "$(printf 'G-SENTINEL\nF-SENTINEL')" ] || { echo "conversation does not reuse greeting.sh/farewell.sh"; exit 1; }
