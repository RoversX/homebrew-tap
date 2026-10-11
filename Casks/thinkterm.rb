cask "thinkterm" do
  arch arm: "arm64", intel: "x86_64"

  version "0.1.9"
  sha256 arm:   "a2980da87ec73c79bf097c8b213b4da6265be217cf43f2bca308ba58ca19768c",
         intel: "81360b18e5c236a17e99573b3628e980c527faf7f25d2b36832248ee3ede9686"

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
