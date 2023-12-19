cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "19.3.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "d840a8bffd6bcd77b2fc002d0f7cb8961939705dcf753eae9e22adca6de5739e",
           intel: "151e6e38c75c92bb742bec856040096c121fedbc4a99fc38ac4913117dae8c57"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

