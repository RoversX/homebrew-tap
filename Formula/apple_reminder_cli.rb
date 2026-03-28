class AppleReminderCli < Formula
  desc "Manage Apple Reminders from the terminal"
  homepage "https://github.com/roversx/apple_reminder_cli"
  url "https://github.com/RoversX/apple_reminder_cli/releases/download/v0.1.0/apple_reminder_cli-macos.zip"
  sha256 "9b96ce85deec9d084a584a1f699f54d1703d9fa3072bca38a862c63cc8021658"
  version "0.1.0"

  depends_on :macos

  def install
    bin.install "apple_reminder_cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apple_reminder_cli --version")
  end
end
