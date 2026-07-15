cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.31.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "d3df1217ae26c18a13985113f51d06d321c0604ba2f72e30207517ed48724e1b",
               intel: "e5a6e7789eb66fa9086f2b74cf0631d563df30e4d258fc6370ac70164663a873"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

