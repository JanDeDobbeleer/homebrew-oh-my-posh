cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.32.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "e0ee6ec38ba28164fca9a474c1727ff5ac37ee3e0b1d7bb5f6f882f554f2b30c",
               intel: "ae3d72111bd353390b2dd438504b04edb4059ef56089c98e017d6193cb14bab3"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

