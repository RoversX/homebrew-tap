cask "launchnext" do
  version "2.4.0"
  sha256 "78acac66abf65d13c5e7269bbcf0f7ef39b9145b67a561b2df6ea705e9eec6b3"

  url "https://github.com/RoversX/LaunchNext/releases/download/v#{version}/LaunchNext#{version}.zip"
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
