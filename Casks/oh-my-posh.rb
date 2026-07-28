cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.36.1"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "c676cd5ca802210478ecad96b3633e377245599246630a72d9da804b3787438c",
               intel: "a86eaaf93bf06ea3e82bff66d46fd5dde06b3e51b7d5f79cb98b098ab326945e"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

