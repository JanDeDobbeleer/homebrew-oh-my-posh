cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.24.1"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "153f54c9a021658ddfbf74de08910a63aa2a1894e9598f4a9863027b3b90a2a8",
               intel: "ff7c702602bb749d850dc7d5a6bb80711ed49843f965d033f81de6ae0db5b40f"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

