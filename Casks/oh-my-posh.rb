cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "24.5.1"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "1cc7ea4541801faaa8221236382e2d3399d02c9353b7ed7094b4ebf468d2a1b6",
           intel: "8d45dfbbd0ab9b2087f53a6af6c8562ecae8dc8771c8cb25075cf22b0c830ac3"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

