class SolidLikeARock < Formula
  desc "Swift import boundary linter — enforce Clean Architecture rules via SwiftSyntax"
  homepage "https://github.com/nenadvulic/solid-like-a-rock"
  version "0.4.1"
  license "MIT"

  # macOS arm64 only. On Apple Silicon, macOS runs arm64 binaries natively
  # even from an x86_64 (Rosetta) shell — no conditional needed.
  url "https://github.com/nenadvulic/solid-like-a-rock/releases/download/v#{version}/solid-like-a-rock-macos-arm64.tar.gz"
  sha256 "5451faf59f928cd33527535ecd5fcd2f94b789f4034139b78c659600596ecf8d"

  def install
    bin.install "solid-like-a-rock"
  end

  test do
    assert_match "Enforce architectural import rules", shell_output("#{bin}/solid-like-a-rock --help")
  end
end
