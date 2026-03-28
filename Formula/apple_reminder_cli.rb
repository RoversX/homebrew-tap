class AppleReminderCli < Formula
  desc "Manage Apple Reminders from the terminal"
  homepage "https://github.com/roversx/apple_reminder_cli"
  url "https://github.com/RoversX/apple_reminder_cli/releases/download/v#{version}/apple_reminder_cli#{version}.zip"
  sha256 "c5088e867379fc393359eb716d01bac552dede126326eb5bd2092cc7f238ca34"
  version "0.1.1"

  depends_on :macos

  def install
    bin.install "apple_reminder_cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apple_reminder_cli --version")
  end
end
