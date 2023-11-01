cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.22.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "399fbaf99af2877350c459b5e1d551e5d98e52ff421f2b49fecc6dc24e540af4",
           intel: "9d1e7deb9603daf1fc89b8862625320f63f0b7abccc1500a899516457a34bf77"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

