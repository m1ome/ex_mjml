defmodule ExMjmlTest do
  use ExUnit.Case

  test "transpiles the given MJML to HTML" do
    mjml = "<mjml></mjml>"
    assert {:ok, html} = ExMjml.to_html(mjml)
    assert String.starts_with?(html, "<!doctype html>")
  end

  test "fails to parse invalid MJML" do
    assert {:error, message} = ExMjml.to_html("<mjml><mjml>")
    assert String.starts_with?(message, "unexpected element")

    assert {:error, message} = ExMjml.to_html("not MJML")
    assert String.starts_with?(message, "parsing error: unknown token")

    assert {:error, message} = ExMjml.to_html("<mjml><///invalid-element></mjml>")
    assert String.starts_with?(message, "parsing error: invalid element")
  end
end
