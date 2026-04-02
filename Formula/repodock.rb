class Repodock < Formula
  desc "Project-aware TUI launcher"
  homepage "https://github.com/roversx/repodock"
  url "https://github.com/roversx/repodock/releases/download/0.1.3/repodock-macos.zip"
  sha256 "1ce0fb9a2e20dfed15bd9e8d24f55458e6f4fc367c1c3ed9ee0f6920799ff35b"
  version "0.1.3"

  depends_on :macos

  def install
    bin.install "repodock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/repodock --version")
  end
end
