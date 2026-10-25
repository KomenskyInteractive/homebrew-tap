# Backlog.md with Komensky Interactive's changes (priority colors, compact task IDs).
# Source and release notes: https://github.com/KomenskyInteractive/Backlog.md/blob/komensky/KOMENSKY.md
class BacklogKomensky < Formula
  desc "Markdown-native task manager and Kanban board (Komensky Interactive fork)"
  homepage "https://github.com/KomenskyInteractive/Backlog.md"
  url "https://github.com/KomenskyInteractive/Backlog.md/releases/download/komensky-v1.55.3-2/backlog-darwin-arm64.tar.gz"
  version "1.55.3-2"
  sha256 "c7db1ac6662d1f1f94c3fe07fad06bbef1216191f4b491dd1f20509ffb814a59"
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
