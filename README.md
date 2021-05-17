# ExMjml
![https://hex.pm/packages/ex_mjml](https://img.shields.io/hexpm/v/ex_mjml)

NIF for converting MJML to HTML output.

## Installation

```elixir
def deps do
  [
    {:ex_mjml, "~> 1.0.0"}
  ]
end
```

## Usage:
```elixir
ExMjml.to_html("<mjml><mj-head></mj-head></mjml>")
{:ok, "<!doctype html><html xmlns=..."}
```
