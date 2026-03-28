class AppleReminderCli < Formula
  desc "Manage Apple Reminders from the terminal"
  homepage "https://github.com/roversx/apple_reminder_cli"
  url "https://github.com/RoversX/apple_reminder_cli/releases/download/0.1.2/apple_reminder_cli-macos.zip"
  sha256 "d28909b02e08b74494364202d2ab16a07ad44c2036386f0bc8dba873f7e85135"
  version "0.1.2"

  depends_on :macos

  def install
    bin.install "apple_reminder_cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apple_reminder_cli --version")
  end
end
