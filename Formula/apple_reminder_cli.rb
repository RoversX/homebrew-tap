class AppleReminderCli < Formula
  desc "Manage Apple Reminders from the terminal"
  homepage "https://github.com/roversx/apple_reminder_cli"
  url "https://github.com/RoversX/apple_reminder_cli/releases/download/0.1.1/apple_reminder_cli-macos.zip"
  sha256 "8260a1fd3eeaa5483a5b93621858d9b49635f75187526908800755f31c97bc3e"
  version "0.1.1"

  depends_on :macos

  def install
    bin.install "apple_reminder_cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apple_reminder_cli --version")
  end
end
