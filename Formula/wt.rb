class Wt < Formula
  desc "Instant Laravel worktrees with Herd: branch, cloned DB, TLS site in one command"
  homepage "https://github.com/wilburpowery/wt"
  url "https://github.com/wilburpowery/wt/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "69b495342a7b6e70383c0e8dcb22d7d14b3615705fc9073e08eaa74b08f3a9c6"
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
