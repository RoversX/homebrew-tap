class Repodock < Formula
  desc "Project-aware TUI launcher"
  homepage "https://github.com/roversx/repodock"
  url "https://github.com/roversx/repodock/releases/download/0.1.0/repodock-macos.zip"
  sha256 "fa5608f25511e1adb13442e329ba84c0a89930a4b5d3dfc668097594aeab7e7d"
  version "0.1.0"

  depends_on :macos

  def install
    bin.install "repodock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/repodock --version")
  end
end
