cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.35.3"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "30a39b92da5ba15a8f07fdf4ee491d13a555c3b8be53965616d62f6d9ea99dce",
               intel: "df91b70d284257da76205c3cce4ebf72f1479fedc3582fdde1af2833ed40597b"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

