class OhMyPosh < Formula
  desc "Prompt theme engine for any shell"
  homepage "https://ohmyposh.dev"
  url "https://github.com/JanDeDobbeleer/oh-my-posh/archive/v26.26.3.tar.gz"
  head "https://github.com/JanDeDobbeleer/oh-my-posh.git", branch: "main"
  sha256 "e3e3c8761e724d5baf393f8e47ab211c0bcff4ef288e24cfafe881d152371bd8"
  license "MIT"
  version "26.26.3"

  depends_on "go@1.25" => :build

  def install
    Dir.chdir("src") do
      ENV["GOEXPERIMENT"] = "greenteagc,jsonv2"
      ENV["GOPROXY"] = ENV.has_key?("HOMEBREW_GOPROXY") ? ENV["HOMEBREW_GOPROXY"] : ""
      system("go build -buildvcs=false -o=oh-my-posh -ldflags=\"-s -w -X 'github.com/jandedobbeleer/oh-my-posh/src/build.Version=26.26.3' -X 'github.com/jandedobbeleer/oh-my-posh/src/build.Date=2025-10-02T11:40:27Z'\"")
      bin.install "oh-my-posh"
    end
    mv "themes", prefix
  end

  def caveats
    <<~EOS
      Thanks for installing Oh My Posh.
      Have a look at https://ohmyposh.dev/docs/ for detailed instructions for your shell.
      Sample themes can be found at $(brew --prefix oh-my-posh)/themes.

      If you're enjoying Oh My Posh, feel free to donate or become a sponsor.
      https://github.com/sponsors/JanDeDobbeleer

      In case you're looking for help, want to share how you use Oh My Posh, or find like-minded individuals, join our Discord community!
      https://discord.gg/n7E3DkXssv
    EOS
  end

  test do
    system "#{bin}/oh-my-posh", "--help"
  end
end

