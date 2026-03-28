class AppleReminderCli < Formula
  desc "Manage Apple Reminders from the terminal"
  homepage "https://github.com/roversx/apple_reminder_cli"
  url "https://github.com/RoversX/apple_reminder_cli/releases/download/v#{version}/apple_reminder_cli#{version}.zip"
  sha256 "6dc67f23815049e270b00c6944d7cbb4234daa286cb57cf7fddeaa19dd27ccf8"
  version "0.1.0"

  depends_on :macos

  def install
    bin.install "apple_reminder_cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apple_reminder_cli --version")
  end
end
