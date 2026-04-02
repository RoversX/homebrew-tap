class Repodock < Formula
  desc "Project-aware TUI launcher"
  homepage "https://github.com/roversx/repodock"
  url "https://github.com/roversx/repodock/releases/download/0.1.4/repodock-macos.zip"
  sha256 "813eff895c956b87a02508ff73dc6a2044ed3e391daf2cdab0bc4c34ccb25978"
  version "0.1.4"

  depends_on :macos

  def install
    bin.install "repodock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/repodock --version")
  end
end
