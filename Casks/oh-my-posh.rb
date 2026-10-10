cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "31.7.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
        sha256 arm:   "89795e276139eeb9c7799e513c3248643b6ef78e7bd4ac3b6c02bbab9473c51d",
               intel: "563627ecf0dff2db9511070a53cc2ca895446b74efffc7afa96e47420d0f4e47"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

