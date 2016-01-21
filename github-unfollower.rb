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
    sha256 "59d0ceafd1c4fb73117aa35f515988b691a386046714f278521ba01d260ddefb"
  end

  def install
    ENV.prepend_create_path "PYTHONPATH", libexec/"vendor/lib/python2.7/site-packages"
    %w[PyGithub].each do |r|
      resource(r).stage do
        system "python", *Language::Python.setup_install_args(libexec/"vendor")
      end
    end

    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python2.7/site-packages"
    system "python", *Language::Python.setup_install_args(libexec)

    bin.install Dir["#{libexec}/bin/*"]
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
  end

end
