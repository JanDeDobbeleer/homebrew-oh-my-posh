class OhMyPosh < Formula
  desc "Prompt theme engine for any shell"
  homepage "https://ohmyposh.dev"
  url "https://github.com/JanDeDobbeleer/oh-my-posh/archive/v5.12.1.tar.gz"
  sha256 "6e3fdba9def7ecd8604b76db6c44c6b76af2d259444005d0e3f3c998436b4754"
  license "GPL-3.0-only"
  version "5.12.1"

  depends_on "go@1.17" => :build

  def install
    Dir.chdir("src") do
      system("go build -o=oh-my-posh -ldflags=\"-X \'main.Version=5.12.1\'\"")
      bin.install "oh-my-posh"
    end
    mv "themes", prefix
  end

  def caveats
    <<~EOS
      Thanks for installing Oh my Posh.
      Have a look at https://ohmyposh.dev/docs/macos for detailed instructions for your shell.
      Sample themes can be found at $(brew --prefix oh-my-posh)/themes.

      If you're enjoying Oh my Posh, feel free to donate or become a sponsor.
      https://github.com/sponsors/JanDeDobbeleer
    EOS
  end

  test do
    system "#{bin}/oh-my-posh", "--help"
  end
end

