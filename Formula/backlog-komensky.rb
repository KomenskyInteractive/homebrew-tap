# Backlog.md with Komensky Interactive's changes (priority colors, compact task IDs).
# Source: https://github.com/KomenskyInteractive/Backlog.md (branch `komensky`)
class BacklogKomensky < Formula
  desc "Markdown-native task manager and Kanban board (Komensky Interactive fork)"
  homepage "https://github.com/KomenskyInteractive/Backlog.md"
  url "https://github.com/KomenskyInteractive/Backlog.md/releases/download/komensky-v1.55.3-4/backlog-darwin-arm64.tar.gz"
  version "1.55.3-4"
  sha256 "048f1b27590f9220fa3d7d3d9ea9ad1f4d342aaae0be6cd46144a439cb48d764"
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
