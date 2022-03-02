class Ed25519Cli < Formula
  desc "Command-Line Interface for using ed25519 EdEC Crypto"
  homepage "https://github.com/passulo/ed25519-cli/"
  url "https://github.com/passulo/ed25519-cli/releases/download/v0.3/ed25519-x86_64-apple-darwin"
  sha256 "afae161d47785e68a0372f152da6986f613dc7a96e64fa779a7e26623b4185b2"
  license "Apache-2.0"

  depends_on "openjdk@17" => :build
  depends_on "sbt" => :build

  def install
    system "chmod", "+x", "ed25519-x86_64-apple-darwin"
    bin.install "ed25519-x86_64-apple-darwin" => "ed25519"
    output = Utils.safe_popen_read("#{bin}/ed25519", "generate-completion")
    (bash_completion/"ed25519").write output
    (zsh_completion/"_ed25519").write output
    # source <(ed25519 generate-completion)
  end

  test do
    system "#{bin}/ed25519", "--version"
  end
end
