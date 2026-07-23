cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.35.1"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "053935da716d836c26db15bf114641b4d9583e84f45731848935bf6d585eb734",
               intel: "e0b96e3846d82d5418a40559653e933fd110455e409aa7fd6eefad042bd4eb25"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

