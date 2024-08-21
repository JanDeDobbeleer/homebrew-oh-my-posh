cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "23.6.8"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
        verified: "github.com/JanDeDobbeleer/oh-my-posh/"
    sha256 arm:   "2eaf194f8511c5a822833bbe1f568c6bdaa058de67ebb5dafd9e754b17472bd9",
           intel: "605eb5e2d872e509a39a22b64e62c61d22379b7b6b714b84e04cefd7ac886f41"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

