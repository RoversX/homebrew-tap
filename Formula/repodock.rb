class Repodock < Formula
  desc "Project-aware TUI launcher"
  homepage "https://github.com/roversx/repodock"
  url "https://github.com/roversx/repodock/releases/download/0.1.1/repodock-macos.zip"
  sha256 "082a6f26815b1ea8cb9f54587b831be188165d8b4ee9da0f947a30fe5b393184"
  version "0.1.1"

  depends_on :macos

  def install
    bin.install "repodock"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/repodock --version")
  end
end
