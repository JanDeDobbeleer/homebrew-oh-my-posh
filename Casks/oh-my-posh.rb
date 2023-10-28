cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    arch arm: "arm64", intel: "amd64"
    version "18.16.1"
    url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
    sha256 arm:   "f41164b208e3256b3abd2143406e74f3b0a900d4852682ecd71a780edfbac7a4",
           intel: "f56ef242f276973fca767e59d8f9d0a0a3f737be485a51358e8a623394fb1b0a"
    name "oh-my-posh"
    binary "posh-darwin-#{arch}", target: "oh-my-posh"
    auto_updates true
end

