cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "33.3.1"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}"
        sha256 arm:   "076cd3c6f76ba3c24520c070db40b8dc60640eb5486ed092584d9bcd9e7f50b1",
               intel: "1c69eabb02f9b4124c7017b15c90da3c9d488cd9507f5cdd83d68729aa0f6eb6"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

