class Ed25519Cli < Formula
  desc "Command-Line Interface for using ed25519 EdEC Crypto"
  homepage "https://github.com/passulo/ed25519-cli/"
  url "https://github.com/passulo/ed25519-cli/archive/refs/tags/v0.1.tar.gz"
  sha256 "993522747a3d3acd0eb97c7d9eac4a9cd2c9cf3e6eea8e4a52a10e65d2b533d2"
  license "Apache-2.0"

  depends_on "openjdk@17" => :build
  depends_on "graalvm-ce-java17" => :build
  depends_on "sbt" => :build

  def install
    system "sbt", "-sbt-jar", Formula["sbt"].opt_libexec/"bin/sbt-launch.jar", "build"
    libexec.install "target/ed25519"
  end

  test do
    system "#{bin}/ed25519", "--version"
  end
end
