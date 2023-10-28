cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.16.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "15460320c6a2bd5fa1d559b4a5f68d2338ebb736c757512685cef6d1e87df8d7",
           intel: "2a0288b7e38cc5cff5c6f37efcc402ab30d41c0d2d615383f7e341737b779de0"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

