# [Conversation] Conversation

## Acceptance criteria
- `bash run-tests.sh` passes with the conversation case asserted.
- conversation.sh prints the greeting line then the farewell line (`hello`, then `goodbye`) and nothing else.
- conversation.sh reuses greeting.sh and farewell.sh rather than repeating their text, so a change to either flows through.

## Proof of done
Run `bash conversation.sh` and read the two lines.
