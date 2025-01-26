cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "24.19.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "69f08613347896ef3ed8d6d8bfd71661b0ef7673ec017681a826d0f5a14e4da4",
           intel: "e379bc9ddf45ea0d349255a8330f54f7cde6255678cdc540e59a1e35f8212207"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

