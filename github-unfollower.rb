# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class GithubUnfollower < Formula
  desc ""
  homepage ""
  url "https://github.com/six519/GitHub-Unfollower/archive/1.0.0.tar.gz"
  version "1.0.0"
  sha256 "4d1f30852c6a1d69c75c9e4e3680b635abe393422a2786570539668a4b684279"

  resource "PyGithub" do
    url "https://pypi.python.org/packages/source/P/PyGithub/PyGithub-1.26.0.tar.gz"
    sha256 "88d975182114d84bb276e15c8cdd823d5ad5a91becf4f825b80ce239e73e6457"
  end

  def install
    resource("PyGithub").stage { system "python", *Language::Python.setup_install_args(libexec/"vendor") }
    bin.install "github_unfollower"
  end

end
