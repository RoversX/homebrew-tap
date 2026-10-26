cask "thinkterm" do
  arch arm: "arm64", intel: "x86_64"

  version "0.3.6"
  sha256 arm:   "1d6923f19ced05096520346624ee7afda314bebe3c85a40387a84d2c0dab7c57",
         intel: "2049e749eb347bd38de0840ab8c608738e700b4359684453df7368b699044fbb"

  url "https://github.com/RoversX/thinkterm/releases/download/#{version}/ThinkTerm-macos-#{arch}-#{version}.zip"
  name "ThinkTerm"
  desc "Workspace-first terminal"
  homepage "https://github.com/RoversX/thinkterm"

  auto_updates true
  conflicts_with cask: ["wezterm", "wezterm@nightly"]
  depends_on macos: :sonoma

  app "ThinkTerm-macos-#{arch}-#{version}/ThinkTerm.app"
  binary "#{appdir}/ThinkTerm.app/Contents/MacOS/thinkterm"
  binary "#{appdir}/ThinkTerm.app/Contents/MacOS/wezterm"
  binary "#{appdir}/ThinkTerm.app/Contents/MacOS/thinkterm-gui"
  binary "#{appdir}/ThinkTerm.app/Contents/MacOS/thinkterm-mux-server"
  binary "#{appdir}/ThinkTerm.app/Contents/MacOS/strip-ansi-escapes"

  zap trash: "~/Library/Saved Application State/com.roversx.thinkterm.savedState"
end
