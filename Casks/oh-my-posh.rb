cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.31.1"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "249ea43aa15448a924b51dcf180c42d1d3246c426b40803ba0c9b767fd12c1d8",
               intel: "a9f70ee649a123bee97bd7954fc395aecab81f826e7f43aa320bbfbb937e81cc"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

