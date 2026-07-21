cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.34.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "b65bcbf5653e8f608fcc03a604d151e687f2e6a6278777f0e86e2295a52aa3d9",
               intel: "724e6a25e51af2e308eaf03faeaef94b341fbfa8bd595b38bf30b9ba9994393f"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

