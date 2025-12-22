cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "28.5.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "dc9faf2952529d73b291fa14f6fd9f6f4b006dcb4c64428d27ab8f43ee94bec8",
           intel: "95a7698bf2877b1d094bb7e6c96d0f9cf95eb025ec91b687e21fdc90ff647056"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

