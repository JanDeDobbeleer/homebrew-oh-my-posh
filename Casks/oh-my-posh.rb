cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.2.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "d6cca526f66f1c341785341c1a1129b6d9713f895a0d34574056a5d55e8578d5",
           intel: "f4430802150792a5777108862d0e8763f55eb9b15f791aea4e630e67b8dc94aa"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

