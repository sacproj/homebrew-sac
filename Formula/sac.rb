class Sac < Formula
  desc "Slides as Code"
  homepage "https://github.com/sacproj"

  url "https://github.com/sacproj/sac-cli/releases/download/2.0.6/sac-cli.tar.gz"
  version "2.0.6"
  sha256 "d7955894e9beb522d18cd3c78fb31859e0c57398da5e72a02d47ed4789d1c079"
  license "MIT"

  def install
    bin.install "sac"
    libexec.install "pdf.js"
  end
end
