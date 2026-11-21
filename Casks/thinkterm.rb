cask "thinkterm" do
  arch arm: "arm64", intel: "x86_64"

  version "0.5.4"
  sha256 arm:   "4c99e3a1dbb2b9863c8d9005cc9b3087bc691b4f6a27fadeefb7bc8a6eadd34d",
         intel: "609517352dbb2bccf26a6055e2e9661f1eee594d02c5fb8ae1e7cda375396223"

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
