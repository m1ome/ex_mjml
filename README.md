# ExMjml
NIF for converting MJML to HTML output.

Usage:
```elixir
ExMjml.to_html("<mjml><mj-head></mj-head></mjml>")
{:ok, "<!doctype html><html xmlns=..."}
```

## Installation

```elixir
def deps do
  [
    {:ex_mjml, "~> 1.0.0"}
  ]
end
```
