class SolidLikeARock < Formula
  desc "Swift import boundary linter — enforce Clean Architecture rules via SwiftSyntax"
  homepage "https://github.com/nenadvulic/solid-like-a-rock"
  version "0.9.0"
  license "MIT"

  # Universal binary (arm64 + x86_64) — works natively on Apple Silicon
  # and under Rosetta without needing `arch -arm64`.
  url "https://github.com/nenadvulic/solid-like-a-rock/releases/download/v#{version}/solid-like-a-rock-macos-universal.tar.gz"
  sha256 "0bb9417130ff88fc92d2d8894314c9ba99b22fbfb626b6069eb687e8241b1e88"

  def install
    bin.install "solid-like-a-rock"
  end

  test do
    assert_match "Enforce architectural import rules", shell_output("#{bin}/solid-like-a-rock --help")
  end
end
