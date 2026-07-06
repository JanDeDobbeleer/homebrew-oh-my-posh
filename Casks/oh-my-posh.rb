cask "oh-my-posh" do
    desc "Prompt theme engine for any shell"
    homepage "https://ohmyposh.dev"
    version "29.21.0"
    name "oh-my-posh"

    on_macos do
        arch arm: "arm64", intel: "amd64"
        url "https://github.com/JanDeDobbeleer/oh-my-posh/releases/download/v#{version}/posh-darwin-#{arch}",
            verified: "github.com/JanDeDobbeleer/oh-my-posh/"
        sha256 arm:   "8aac2cf40c7bba0fd065da913cdca4068065cfa0470737e11c8439fee16b6878",
               intel: "0a20fbacf22e6c95c931e80205dda0c26288bb3a8a9c981902dcf16bfbbe0437"
        binary "posh-darwin-#{arch}", target: "oh-my-posh"
    end

    auto_updates true
end

