class Ed25519Cli < Formula
  desc "Command-Line Interface for using ed25519 EdEC Crypto"
  homepage "https://github.com/passulo/ed25519-cli/"
  url "https://github.com/passulo/ed25519-cli/releases/download/v0.1/ed25519-x86_64-apple-darwin"
  sha256 "bdba8211f74478bd02a168f9dc418aaf9ea50a7434ea537a3f1bdf78934df900"
  license "Apache-2.0"

  depends_on "openjdk@17" => :build
  depends_on "sbt" => :build

  def install
    system "mv", "ed25519-x86_64-apple-darwin", "ed25519" 
    bin.install "ed25519"
  end

  test do
    system "#{bin}/ed25519", "--version"
  end
end
