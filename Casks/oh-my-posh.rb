cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.35.2"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "2d61010c8c5f119abcf796fffdb87ce0336773a86ab93e83fbd9d5e97a5242bf",
               intel: "21c912783d6e4ae7e15decf9e2f9933ed3506354f475721f61389dc51ee5fd0b"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

