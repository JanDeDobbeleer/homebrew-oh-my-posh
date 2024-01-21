cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.8.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "4bee04b2b738c130002b33646cf76e210a7536ed15fe0cca6de6cda2b3fde50a",
           intel: "6abed2493f827ab083cb0fdef18016d7b8960310455238561d38448295a37b34"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

