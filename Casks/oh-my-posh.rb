cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "31.0.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "230f7c84e31f1ab1245b63ef16d0b90f0cbe52db828718048d8a3c0ba51a0371",
               intel: "6cd383aeb9bfe9941bbb2e1ac85fd29a09da8e390dafbd59bd0b520d6dca5180"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

