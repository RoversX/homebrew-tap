cask "launchnext" do
  version "2.4.1"
  sha256 "54dac8fac1fb39ec539df69bee44282ed7f77866677163c152137624f69a191c"

  url "https://github.com/RoversX/LaunchNext/releases/download/2.4.1/LaunchNext#{version}.zip"
  name "LaunchNext"
  desc "macOS Launchpad replacement for macOS Tahoe and later"
  homepage "https://github.com/RoversX/LaunchNext"

  auto_updates true

  app "LaunchNext.app"

  caveats <<~EOS
    LaunchNext is not notarized by Apple. If macOS blocks the app on first launch,
    go to System Settings → Privacy & Security → scroll down and click "Allow Anyway".
  EOS
end
