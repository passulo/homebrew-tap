class Ed25519Cli < Formula
  desc "Command-Line Interface for using ed25519 EdEC Crypto"
  homepage "https://github.com/passulo/ed25519-cli/"
  url "https://github.com/passulo/ed25519-cli/archive/refs/tags/v0.1.tar.gz"
  sha256 "bcf181b69f8b0f44ab59c7ca606d4a4a34a27a0e581136ea62ecb6797edf9f1b"
  license "Apache-2.0"

  depends_on "openjdk@17" => :build
  depends_on "sbt" => :build

  def install
    system "sbt", "-sbt-jar", Formula["sbt"].opt_libexec/"bin/sbt-launch.jar", "build"
    libexec.install "target/ed25519"
  end

  test do
    system "#{bin}/ed25519", "--version"
  end
end
