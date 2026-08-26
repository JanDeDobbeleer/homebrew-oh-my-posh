cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "30.8.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "4ef334705e190fa3da73b437c4be2b14a78f3746a92c00580d04965a8d353723",
               intel: "2d91b901543b7a9a6a45bcc9f3a1ec481401f4b0d7f0ac13dc688041ddb461ba"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

