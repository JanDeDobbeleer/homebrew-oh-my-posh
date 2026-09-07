cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "31.2.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "e1111a29376de792d791f2c61130cfcd1d48d3cefbde9136783309fd384ee22a",
               intel: "bf109d22bc4a6bc002bbda34ec9a3583f09a321aab5b8371de706bf932d80dd7"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

