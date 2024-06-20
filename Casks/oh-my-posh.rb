cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "21.15.1"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "0552a9b3f8a3b173da12cd4cfefb23a400de60cfff9ec9bf69bb7b59074f4a49",
           intel: "43e9807664b0a419fd14c2cbe93feeb7e6ba750b2f5e4fb46f0438b6b296eb67"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

