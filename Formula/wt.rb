class Wt < Formula
  desc "Instant Laravel worktrees with Herd: branch, cloned DB, TLS site in one command"
  homepage "https://github.com/wilburpowery/wt"
  url "https://github.com/wilburpowery/wt/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "850f6963113065ec7c186ef41e30200350a8bc47d47e365180ebc7b378e49b11"
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
