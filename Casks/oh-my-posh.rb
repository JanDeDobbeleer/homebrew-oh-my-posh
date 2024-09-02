cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "23.10.1"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "3425e48c2f42e00b6fc57e473f8310bcb7e212b5cc66d4c8f8a6dd8b4d3c822d",
           intel: "d9d217da069aa257eaa91aef85d44a1c6fd3a0fa873aa85c9f427771a4f8e03f"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

