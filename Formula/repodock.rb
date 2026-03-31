class Repodock < Formula
  desc "Project-aware TUI launcher"
  homepage "https://github.com/roversx/repodock"
  url "https://github.com/roversx/repodock/releases/download/0.1.0/repodock-macos.zip"
  sha256 "196d535f3d3a1f49f3c6328754e2de8ffb0afef15afe1d5ab98b2d2e585b8141"
  version "0.1.0"

  depends_on :macos

  def install
    bin.install "repodock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/repodock --version")
  end
end
