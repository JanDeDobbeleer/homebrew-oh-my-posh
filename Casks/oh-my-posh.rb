cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.11.5"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "dc85e33a1eecf0553c0d82f730afcc6b6183e03a118f5aa7a07a65a15a2ca41d",
           intel: "a3d3e6fcc53d8c814f823be40ceb5d41ce404365ae9679e92ebc2360dccc2e6f"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

