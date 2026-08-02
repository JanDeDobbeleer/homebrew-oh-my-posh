cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "30.2.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "aa6ec7820a3676b8cff40a75f5c0a7ccecf8bdca64046f5a5ea454712043e103",
               intel: "40386a306ca738fd279d633cbebfe1eead864d825925f6a8cd89c6310b778c9f"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

