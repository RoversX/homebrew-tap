class AppleReminderCli < Formula
  desc "Manage Apple Reminders from the terminal"
  homepage "https://github.com/roversx/apple_reminder_cli"
  url "https://github.com/RoversX/apple_reminder_cli/releases/download/v0.1.1/apple_reminder_cli-macos.zip"
  sha256 "601f11bb17a73bb70fd1fab37204da0f700f05e9f9edc0d6b4233319ba48a58f"
  version "0.1.1"

  depends_on :macos

  def install
    bin.install "apple_reminder_cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apple_reminder_cli --version")
  end
end
