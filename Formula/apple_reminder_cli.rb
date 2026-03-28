class AppleReminderCli < Formula
  desc "Manage Apple Reminders from the terminal"
  homepage "https://github.com/roversx/apple_reminder_cli"
  url "https://github.com/RoversX/apple_reminder_cli/releases/download/0.1.2/apple_reminder_cli-macos.zip"
  sha256 "5ac34b0d5d632e97dde2fe287d53de95e41959591b384b1aa5703fd71c37d26e"
  version "0.1.2"

  depends_on :macos

  def install
    bin.install "apple_reminder_cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apple_reminder_cli --version")
  end
end
