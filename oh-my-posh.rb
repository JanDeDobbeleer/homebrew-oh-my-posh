class OhMyPosh < Formula
  desc "Prompt theme engine for any shell"
  homepage "https://ohmyposh.dev"
  url "https://github.com/JanDeDobbeleer/oh-my-posh3/archive/v3.60.0.tar.gz"
  sha256 "971a090dc82708dd6abc379c05d4cac20bc132aaacee9bc710895b03997e9f57"
  license "GPL-3.0-only"
  version "3.60.0"
  revision 2

  depends_on "go" => :build
  depends_on "go-bindata" => :build

  def install
    system "go-bindata", "-o", "init.go", "init/"
    system "go", "build", "-o", "oh-my-posh", "-ldflags=\"-X 'main.Version=3.60.0'\""
    bin.install "oh-my-posh"
    mv "themes", prefix
  end

  def caveats
    <<~EOS
      Thanks for installing Oh my Posh.
      Have a look at https://ohmyposh.dev/docs/installation for detailed instructions for your shell.
      Sample themes can be found at $(brew --prefix oh-my-posh)/themes.
    EOS
  end

  test do
    system "#{bin}/oh-my-posh", "--help"
  end
end

