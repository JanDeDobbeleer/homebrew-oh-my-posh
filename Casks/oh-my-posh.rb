cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "27.4.3"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "84abcc4be5e679ac8a0d52b730dd5e4a12e1e99e8e6fdd7df2cf113411d9c78b",
           intel: "3f1abdcc5202367b057ab558b951af1072d10ae76bfa7c8fecc7dac2cb8bec35"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

