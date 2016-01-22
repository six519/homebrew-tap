class Pygithub < Formula
  desc ""
  homepage ""
  url "https://pypi.python.org/packages/source/P/PyGithub/PyGithub-1.26.0.tar.gz"
  version "1.26.0"
  sha256 "59d0ceafd1c4fb73117aa35f515988b691a386046714f278521ba01d260ddefb"


  def install
    ENV.prepend_create_path "PYTHONPATH", libexec/"lib/python2.7/site-packages"
    system "python", *Language::Python.setup_install_args(libexec)

    bin.install Dir["#{libexec}/bin/*"]
    bin.env_script_all_files(libexec/"bin", :PYTHONPATH => ENV["PYTHONPATH"])
  end


end
