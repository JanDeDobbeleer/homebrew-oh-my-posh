cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.18.0"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "21aa446b0da045fd783faae658f0dd2cba2110d8947a60597dceeb3f18b0c6a5",
           intel: "ebd03ad15d492e7a728ac4573a5fb82de396742390bafafd987047b1104cb261"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

