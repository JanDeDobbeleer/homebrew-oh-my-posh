cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "22.1.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "53b0950e9448a664b340985ccffdf3637df2c73b61cd6b689238198cd4ddfc98",
           intel: "9f6403f119e9469d9ce1ffd1fd8674704ddbbfe52de8ee0d6251ddbfcc866567"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

