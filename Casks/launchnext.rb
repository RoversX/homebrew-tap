cask "launchnext" do
  version "2.4.2"
  sha256 "647c67cb94ec7b1d91ca612824eabf5bbc4cc81fbb02913bedb6919d4262645d"

  url "https://github.com/RoversX/LaunchNext/releases/download/2.4.2/LaunchNext#{version}.zip"
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
