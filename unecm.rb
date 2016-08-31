class Unecm < Formula
  desc ""
  homepage ""
  url "https://github.com/six519/unecm/archive/v1.0.0.tar.gz"
  version "1.0.0"
  sha256 "6f7d553b26d05c296744637e64ed2e6734aa96f8f0b3a7087c16ab70078a7e6f"

  def install
    system "make", "build"
    bin.install "unecm"
  end
end
