cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.33.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "0dc858effb08bb1b8e8c2831f29dd53ba6c1b060ed01080536e1ca7f1d844b74",
               intel: "adb872fad1eff65ec128d991955e89cc513a8ebed59a3cc38266689e49628447"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

