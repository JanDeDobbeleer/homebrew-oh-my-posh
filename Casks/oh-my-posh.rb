cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "31.3.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "90311f6de4e778b6a9561a6cd0ced813fbbecad802908ed9dbbff56a847ddd0a",
               intel: "37433d1a2112c89f4dfd5a3fd0acc57a9c67a2d92849109c927f77b883b754c4"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

