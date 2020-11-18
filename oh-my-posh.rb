class OhMyPosh < Formula
  desc "Prompt theme engine for any shell"
  homepage "https://ohmyposh.dev"
  url "https://github.com/JanDeDobbeleer/oh-my-posh3/archive/v3.38.0.tar.gz"
  sha256 "3483efea52bd7b82b6fa260fcf0260fbd9cc4050302779b4da1e62f11a317718"
  license "GPL-3.0-only"
  version "3.38.0"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", "oh-my-posh"
    bin.install "oh-my-posh"
    mv "themes", prefix
    ohai "Thanks for installing Oh my Posh."
    ohai "Have a look at https://ohmyposh.dev/docs/installation for detailed instructions for your shell."
    ohai "Sample themes can be found at $(brew --prefix oh-my-posh)/themes."
  end

  test do
    system "#{bin}/oh-my-posh", "--help"
  end
end

