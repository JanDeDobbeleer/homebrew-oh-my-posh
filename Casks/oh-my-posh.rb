cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.19.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "8ab7995985f938dbb58131252f984de01fe4c70ec93bb7a13107e0db160a757d",
           intel: "f7ad0df8c1c02583d4c0f2c3457aa31607aa0c88bd4836497b772d7e3d77532d"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

