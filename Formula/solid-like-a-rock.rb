class SolidLikeARock < Formula
  desc "Swift import boundary linter — enforce Clean Architecture rules via SwiftSyntax"
  homepage "https://github.com/nenadvulic/solid-like-a-rock"
  version "0.4.2"
  license "MIT"

  # Universal binary (arm64 + x86_64) — works natively on Apple Silicon
  # and under Rosetta without needing `arch -arm64`.
  url "https://github.com/nenadvulic/solid-like-a-rock/releases/download/v#{version}/solid-like-a-rock-macos-universal.tar.gz"
  sha256 "f5185b92b2e8dbfb40c59dbe0bde531d0b2320e297e768d23e1f8535ff586091"

  def install
    bin.install "solid-like-a-rock"
  end

  test do
    assert_match "Enforce architectural import rules", shell_output("#{bin}/solid-like-a-rock --help")
  end
end
