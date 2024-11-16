cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "24.6.2"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "d80cd4b75a50f6bb63ef9e277803673ccf1c9fc4fff1650b2f9ca7e816cd4ee1",
           intel: "ff6ff2db56f44cfc0aaff0a307652f447d6c767e56b3297960471990b770b930"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

