cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.17.2"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "df465ac4ac2f8cb64f2074bd89da388a99b98470a2047211c03a6f75b0ab316a",
           intel: "477cf8e946ca1f67dc224eb44fb9bcca9c9e529551d33213120b56f0f81c4a9f"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

