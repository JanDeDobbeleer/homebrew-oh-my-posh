cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "30.6.2"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "873036f14391bab2c8538e1ffb141396cfb7b06772644836d5ca465441ca9be1",
               intel: "2034fe074c09f5bf8327188e3ed51fee7f11703373acf2c3ce1771a61ff3c133"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

