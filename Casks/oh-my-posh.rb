cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "31.4.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "45ec901d5eaf668782eca4eb26b3e6416a8dce6330a53a2535d5f69f782d3bab",
               intel: "358c45f1b0b0c560a3df98517612af920c80f1117207ff0b63567491e55d0e33"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

