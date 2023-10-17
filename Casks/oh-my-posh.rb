cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.13.1"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "244df536410257ca392fd21afe56e2e7f5ae93fe5bbbd7fb34d9c81fab31224a",
           intel: "60101a26533d25ae300695fa8839d0c32d711a0ca52adbcdfbc6b463eed163d5"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

