# [Conversation] Conversation

## Acceptance criteria
- `bash run-tests.sh` passes with the conversation case asserted.
- conversation.sh prints the greeting line then the farewell line (`hello`, then `goodbye`) and nothing else.
- conversation.sh reuses greeting.sh and farewell.sh rather than repeating their text, so a change to either flows through.
- conversation.sh is run by its own path (from any working directory); invoking it through a symlink placed elsewhere is not supported.

## Proof of done
- Run `bash conversation.sh` and read the two lines.
- `tests/conversation.sh` asserts the exact output, stderr and exit code; `tests/conversation-reuse.sh` swaps in stub siblings and asserts their output comes through.
