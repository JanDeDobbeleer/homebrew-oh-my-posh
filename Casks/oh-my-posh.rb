cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "33.3.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
        sha256 arm:   "9132557f5ecd9bc42bfe4b7f70e512ebb558ef62e3b654e81df8c4b8e7f60bf9",
               intel: "5e9f4187bf064fc5f24994f59e99376a5df05896892dd5ed1a7f246e4ffefc88"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

