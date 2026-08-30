cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "31.1.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "299576f9679fe7d38c90b143222ca659afc8965989d863d86e4b54c60895b84d",
               intel: "e447669c4ce93bae3d385ba3b429d8c3a6ff8f11c8c7eaaaacc7540ffbf91996"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

