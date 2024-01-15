cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.6.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "3dc3909d5fdbba9c3e6daca5cb4d64c7c0d8d256613be04e366708d32ef42965",
           intel: "1adfc7842d7dfc46c106716e3a57381654ea83d27cfd69b79b5cb29ec749d309"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

