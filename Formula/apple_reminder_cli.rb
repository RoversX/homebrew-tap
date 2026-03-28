class AppleReminderCli < Formula
  desc "Manage Apple Reminders from the terminal"
  homepage "https://github.com/roversx/apple_reminder_cli"
  url "https://github.com/RoversX/apple_reminder_cli/releases/download/0.1.3/apple_reminder_cli-macos.zip"
  sha256 "561bb1e0464590a35a3e015c9bdbc5c915d6758df45d32413e87e5ed6fdcfd3d"
  version "0.1.3"

  depends_on :macos

  def install
    bin.install "apple_reminder_cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/apple_reminder_cli --version")
  end
end
