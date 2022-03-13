class Sac < Formula
  desc "Slides as Code"
  homepage "https://github.com/sacproj"

  url "https://github.com/sacproj/sac-cli/releases/download/2.2.1/sac-cli.tar.gz"
  version "2.2.1"
  sha256 "284e0d06f22258587299868eef473cd1daf8e91898d4e90723bce4481a63acca"
  license "MIT"

  def install
    bin.install "sac"
    libexec.install "pdf.js"
  end
end
