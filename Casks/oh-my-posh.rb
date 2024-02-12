cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.10.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "67fecacda7e14349d5af29442d78d6fe5a77fdc11f95606c889b4b0b5277d9ec",
           intel: "264df3e04f5d4afa41d9a347e61aca42fa50e4c39341e2bf1774dbd1af05f7d1"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

