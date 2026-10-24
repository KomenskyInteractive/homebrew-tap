# Backlog.md with Komensky Interactive's changes (priority colors, short task IDs).
# Source and release notes: https://github.com/KomenskyInteractive/Backlog.md/blob/komensky/KOMENSKY.md
class BacklogKomensky < Formula
  desc "Markdown-native task manager and Kanban board (Komensky Interactive fork)"
  homepage "https://github.com/KomenskyInteractive/Backlog.md"
  url "https://github.com/KomenskyInteractive/Backlog.md/releases/download/komensky-v1.55.3-1/backlog-darwin-arm64.tar.gz"
  version "1.55.3-1"
  sha256 "9f2a427c191359d21a25c3032429ddf0ac600189a29052c4af709ce14a5dbe11"
  license "MIT"

  depends_on arch: :arm64
  depends_on :macos

  conflicts_with "backlog-md", because: "both install a `backlog` binary"

  def install
    bin.install "backlog"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/backlog --version")
  end
end
