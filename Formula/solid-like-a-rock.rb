class SolidLikeARock < Formula
  desc "Swift import boundary linter — enforce Clean Architecture rules via SwiftSyntax"
  homepage "https://github.com/nenadvulic/solid-like-a-rock"
  version "0.5.0"
  license "MIT"

  # Universal binary (arm64 + x86_64) — works natively on Apple Silicon
  # and under Rosetta without needing `arch -arm64`.
  url "https://github.com/nenadvulic/solid-like-a-rock/releases/download/v#{version}/solid-like-a-rock-macos-universal.tar.gz"
  sha256 "8b55c573cc2c76c0fe5dde0b128f9afb9ad32719eff8f9e39b0f6d52ac646fde"

  def install
    bin.install "solid-like-a-rock"
  end

  test do
    assert_match "Enforce architectural import rules", shell_output("#{bin}/solid-like-a-rock --help")
  end
end
