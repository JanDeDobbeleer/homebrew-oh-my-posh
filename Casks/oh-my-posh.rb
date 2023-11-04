cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.23.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "bb457d8f04f8d77042a6cc2913128964c6ee0916136c6a33a2ee5d59564b159c",
           intel: "84b566d229ba6badf166aa1046ce8640e0f4d3f0b2141f2885eb68b5960c751f"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

