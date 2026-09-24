# [Test hardening] Sibling tests check the whole output

Found during the E3.1 gauntlet (`.shipyard/reviews/e3.1-conversation-2026-09-24.md`).

## Acceptance criteria
- `tests/greeting.sh` and `tests/farewell.sh` capture stderr and the exit code alongside stdout, as `tests/conversation.sh` does.
- Each fails on trailing blank lines, stderr output, or a non-zero exit after correct output.
- On failure each prints the actual output it got.

## Proof of done
Mutate each script (append `echo`, `echo noise >&2`, `exit 3`) in a scratch copy: `bash run-tests.sh` fails for every mutant and passes on the real scripts.
