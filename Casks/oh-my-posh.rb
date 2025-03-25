cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "25.6.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "0be4bac3c1b656eb7e16cf05ad0db3fa9c28daf8ea546b3c12a3ef5dd54a5ec0",
           intel: "1d8d2720d0739053bfecdd241c036b884ebb09543ab8ee924fb8bcff275cddc3"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

