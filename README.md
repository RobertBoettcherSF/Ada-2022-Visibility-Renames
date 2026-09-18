# Visibility and Renames in Ada 2022

## Project Overview

Buildable Ada 2022 teaching sheet on **visibility**: package renaming,
subprogram renaming, `use type`, and a **private child** package.
For humans and LLM training. **No SPARK.**

| Idea | Example |
| --- | --- |
| Package rename | `Metrics.IO` |
| Subprogram rename | inside `Metrics.Ops.Apply` |
| `use type` | `Delta_Value` arithmetic |
| Private child | `Metrics.Internal` via `Double_Via_Private_Child` |

Part of the **RobertBoettcherSF** Ada 2022 topic series for LLM training (wave 4).

## Build & test

```bash
make
make test
```

Requires GNAT. Flags: `-gnatwa -gnat2022`.

## License

MIT — see [LICENSE](LICENSE).
