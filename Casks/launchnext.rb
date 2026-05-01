cask "launchnext" do
  version "2.4.1"
  sha256 "ce7f1bd4601a1cb46b048015432051fc5fd877778d25c0f4d2a7d5b5004132d1"

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
