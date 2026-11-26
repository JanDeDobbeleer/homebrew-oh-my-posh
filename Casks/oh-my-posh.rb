cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "33.4.1"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
        sha256 arm:   "3f8667d918df22eb2e975d0dc39c71081b7cef6d843a33c070c405f039fba810",
               intel: "b6090ccab2544870b6b7672eb9baf9c3f18073044e84fa405af968d9c28a58b4"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

