defmodule ExMjml do
  @moduledoc """
  Module to convert/render MFML templates to HTML.
  """

  use Rustler, otp_app: :ex_mjml, crate: "mjml_nif"

  @doc """
  Converts an MJML string to HTML content.

  Returns a result tuple:
  - `{:ok, html}` for a successful MJML transpiling
  - `{:error, message}` for a failed MJML transpiling

  ## Examples

      iex> ExMjml.to_html("<mjml><mj-head></mj-head></mjml>")
      {:ok, "<!doctype html><html xmlns=..."}

      iex> ExMjml.to_html("something not MJML")
      {:error, "Couldn't convert MJML template"}

  """
  def to_html(_mjml), do: error()

  defp error(), do: :erlang.nif_error(:nif_not_loaded)
end
