# plivo/homebrew-tap

Homebrew formula and Scoop manifest for the [Plivo CLI](https://github.com/plivo/plivo-cli).

## Install

macOS / Linux:

```bash
brew install plivo/tap/plivo
```

Windows:

```powershell
scoop bucket add plivo https://github.com/plivo/homebrew-tap
scoop install plivo
```

If `plivo` was previously installed with `curl | bash`, that copy is likely
earlier on your `PATH` and will keep winning. `brew` warns when it detects this;
remove `~/.local/bin/plivo` to switch over.

## Contents

| path | used by |
|---|---|
| `Formula/plivo.rb` | Homebrew |
| `bucket/plivo.json` | Scoop |

## Updating

Both files are **generated** — do not hand-edit them. They are rendered from a
release's own `SHA256SUMS` by `scripts/gen-tap.sh` in the plivo-cli repo:

```bash
# from a plivo-cli checkout, after the GitHub release exists
scripts/gen-tap.sh v0.3.0 dist/SHA256SUMS ../homebrew-tap
```

This runs **locally**, not in CI. The org IP allow list blocks GitHub API writes
from hosted runners, which is also why plivo-cli releases are cut by hand — an
automated bump would 403.

There is deliberately no CI here: the formula installs a pre-built binary, so
there is nothing to compile and no bottle to publish. Rendering is covered by a
test in plivo-cli instead.
