class Titik < Formula
  desc "Titik Programming Language/Interpreter Written In Go Lang"
  homepage ""
  url "https://github.com/six519/titik2/archive/v2.0.0.tar.gz"
  sha256 "bc03205994472cf038b05d9979c8780cf59212a3dc499836d6cb2f8586dedb1a"
  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    (buildpath/"src/github.com/six519/titik2").install buildpath.children
    cd "src/github.com/six519/titik2" do
      system "go", "build", "-o", bin/"titik"
      prefix.install_metafiles
    end
  end

  test do
    system "false"
  end
end
