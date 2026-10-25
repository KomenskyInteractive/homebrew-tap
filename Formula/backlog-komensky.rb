# Backlog.md with Komensky Interactive's changes (priority colors, compact task IDs).
# Source and release notes: https://github.com/KomenskyInteractive/Backlog.md/blob/komensky/KOMENSKY.md
class BacklogKomensky < Formula
  desc "Markdown-native task manager and Kanban board (Komensky Interactive fork)"
  homepage "https://github.com/KomenskyInteractive/Backlog.md"
  url "https://github.com/KomenskyInteractive/Backlog.md/releases/download/komensky-v1.55.3-3/backlog-darwin-arm64.tar.gz"
  version "1.55.3-3"
  sha256 "183136d402f10659c35c5411e1e2ec022fed21b8e46110f665487745854c9ae2"
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
