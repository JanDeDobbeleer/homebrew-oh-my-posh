cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "30.6.1"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "9b7ff3088530bbbbe9186e705e68928d5086f63995e62cdd1dac561bb7c513a7",
               intel: "b234ab60c02e13cf46996a36b58d1074c82131cb72e6424e30a1441be30daeb1"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

