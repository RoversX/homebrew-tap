cask "thinkterm" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.4"
  sha256 arm:   "82ad700e412acaeadd7b3d2efcecbc85e630dc0f3589bc9c7f967b088f3c93b5",
         intel: "28bda94041b14977bffa583800ac8f0275c34b17cda269e2bc9450be411710ba"

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
