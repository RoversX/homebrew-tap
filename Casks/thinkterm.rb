cask "thinkterm" do
  arch arm: "arm64", intel: "x86_64"

  version "0.3.2"
  sha256 arm:   "f33a21831f9c01f4f5eadb9a0987cb509b17197e671d8ff89abad2fb0552899f",
         intel: "49329560f2a2c2c1b7c6735e563c9d7a65c7b6964303bacf22a3b4b5450ca1ca"

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
