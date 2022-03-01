cask "ed25519-cli" do
  version "0.1"
  sha256 "81eea897e2e4d9c03e0766958285c32ff77e83754ff4c416e28ef49a804207a6"

  url "https://github.com/passulo/ed25519-cli/releases/tag/v#{version}"
  name "ed25519-cli"
  desc "Command-Line Interface for using ed25519 EdEC Crypto"
  homepage "https://github.com/passulo/ed25519-cli/commits/main"

  app "ed25519"
end
