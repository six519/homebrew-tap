# Documentation: https://github.com/Homebrew/homebrew/blob/master/share/doc/homebrew/Formula-Cookbook.md
#                http://www.rubydoc.info/github/Homebrew/homebrew/master/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class GithubUnfollower < Formula
  desc ""
  homepage ""
  url "https://github.com/six519/GitHub-Unfollower/archive/1.0.0.tar.gz"
  version "1.0.0"
  sha256 "4d1f30852c6a1d69c75c9e4e3680b635abe393422a2786570539668a4b684279"

  def install
    system "pip", "install", "PyGithub"    
    bin.install "github_unfollower"
  end

end
