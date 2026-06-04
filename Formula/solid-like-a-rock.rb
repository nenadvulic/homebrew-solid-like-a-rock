class SolidLikeARock < Formula
  desc "Swift import boundary linter — enforce Clean Architecture rules via SwiftSyntax"
  homepage "https://github.com/nenadvulic/solid-like-a-rock"
  version "0.4.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/nenadvulic/solid-like-a-rock/releases/download/v#{version}/solid-like-a-rock-macos-arm64.tar.gz"
      sha256 "5451faf59f928cd33527535ecd5fcd2f94b789f4034139b78c659600596ecf8d"
    else
      odie "solid-like-a-rock does not provide an x86_64 binary. Use `swift run` instead."
    end
  end

  def install
    bin.install "solid-like-a-rock"
  end

  test do
    assert_match "Enforce architectural import rules", shell_output("#{bin}/solid-like-a-rock --help")
  end
end
