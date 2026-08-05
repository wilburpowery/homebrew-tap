class Wt < Formula
  desc "Instant Laravel worktrees with Herd: branch, cloned DB, TLS site in one command"
  homepage "https://github.com/wilburpowery/wt"
  url "https://github.com/wilburpowery/wt/archive/refs/tags/v0.2.1.tar.gz"
  sha256 "ef4889fcd76b414499a279dcfab6dc7d2fe395dd5a199bf2122680bd115cfde2"
  license "MIT"
  head "https://github.com/wilburpowery/wt.git", branch: "main"

  depends_on :macos

  def install
    bin.install "wt"
  end

  def caveats
    <<~EOS
      wt drives Laravel Herd (https://herd.laravel.com) and a local MySQL
      (e.g. DBngin). Install those separately — they are not Homebrew formulae.
    EOS
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/wt --version")
  end
end
