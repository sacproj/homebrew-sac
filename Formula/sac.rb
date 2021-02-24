class Sac < Formula
  desc "Slides as Code"
  homepage "https://github.com/sacproj"

  url "https://github.com/sacproj/sac-cli/releases/download/2.0.0/sac-cli.tar.gz"
  version "2.0.0"
  sha256 "a49c8a09ad5c3dded7c3e4bb86ca799ad706e6673eaa76c9dea6b9c8e21c877a"
  license "MIT"

  def install
    bin.install "sac"
    libexec.install "pdf.js"
  end
end
