cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.29.1"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "71f5533de6dd0bb84ae43202bded8c31a8dc1ff7a0a5de9b52494c317aecc7aa",
           intel: "9368007759b3c96c7a6ecf739eefc3ea76601e1cccbdeb4a38088a3fb44e3954"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

