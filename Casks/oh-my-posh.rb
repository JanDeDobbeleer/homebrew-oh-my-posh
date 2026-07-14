cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.28.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "79e04bf1222ccf098aafa1858d35b33b795bdf90a8a59eba344e732e7c771999",
               intel: "6fee53a6325b90bed56a19e1240eaacf73421bc16034a9b8176cb7cd50d576bf"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

