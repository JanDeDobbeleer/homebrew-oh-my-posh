cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.37.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "bacbf91dcb4597e69c4f7ef254c452f218bd1692277dc56a1fc9ba062c26a722",
               intel: "1da387c4138f9dbdf545ad2a6fdf5f27a99391a9c8ca7901241dd47aa1c6777b"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

