cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "24.6.1"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "84cd2631ddd0208169ab486cb37b33f1bcf915a28c6f0eafb4bddbbbbf0c0ccd",
           intel: "aac77a50303695f091d45513ee0decd4dceda79b119f672b19f3cdc8c7bb7a33"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

