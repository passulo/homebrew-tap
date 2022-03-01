class Ed25519Cli < Formula
  desc "Command-Line Interface for using ed25519 EdEC Crypto"
  homepage "https://github.com/passulo/ed25519-cli/commits/main"
  url "https://github.com/passulo/ed25519-cli/releases/tag/v0.1"
  sha256 "81eea897e2e4d9c03e0766958285c32ff77e83754ff4c416e28ef49a804207a6"
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
