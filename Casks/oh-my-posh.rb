cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "24.11.3"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "667aead16b0cef1188357ab2aae4d891d96b2d66a6a3ce3157dcc714e35dd9b7",
           intel: "480bc1f94bcc8d0b932c41e14ede7e4fd66a7fbaf0eb8f00eb2da5d5866673fd"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

