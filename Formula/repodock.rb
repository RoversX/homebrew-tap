class Repodock < Formula
  desc "Project-aware TUI launcher"
  homepage "https://github.com/roversx/repodock"
  url "https://github.com/roversx/repodock/releases/download/0.1.2/repodock-macos.zip"
  sha256 "b027e57fe3a276a591f4a07de10366a152a8dd8fd76d59caab929fe536637381"
  version "0.1.2"

  depends_on :macos

  def install
    bin.install "repodock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/repodock --version")
  end
end
