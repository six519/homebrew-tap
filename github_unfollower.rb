class GithubUnfollower < Formula
  desc ""
  homepage ""
  url "https://github.com/six519/GitHub-Unfollower/archive/1.0.0.tar.gz"
  version "1.0.0"
  sha256 "4d1f30852c6a1d69c75c9e4e3680b635abe393422a2786570539668a4b684279"

  resource "PyGithub" do
    url "https://pypi.python.org/packages/source/P/PyGithub/PyGithub-1.26.0.tar.gz"
    sha256 "59d0ceafd1c4fb73117aa35f515988b691a386046714f278521ba01d260ddefb"
  end

  def install

    #ENV.prepend_create_path "PYTHONPATH", libexec/"vendor/lib/python2.7/site-packages"
    resource("PyGithub").stage { system "python", *Language::Python.setup_install_args(libexec/"vendor/lib/python2.7/site-packages") }
    
    bin.install "github_unfollower"
  end

end