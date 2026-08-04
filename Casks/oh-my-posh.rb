cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "30.5.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "88f675a55a1e56474b588333643cd9ee7e0fcdd40f8fe6547ad3740fec9daf6e",
               intel: "01f265af6747084328a4be1422a75f235713dad1b56d8097fc1a77208e172f3e"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

