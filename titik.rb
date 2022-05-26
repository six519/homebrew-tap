class Titik < Formula
  desc "Titik Programming Language/Interpreter Written In Go Lang"
  homepage ""
  url "https://github.com/six519/titik2/archive/v3.3.0.tar.gz"
  sha256 "b7f2c4d1f85c000cef9aa20eb834611a349edd30da907c56829dfc63a7b621de"
  depends_on "go" => :build

  def install
    ENV["GOPATH"] = buildpath
    (buildpath/"src/github.com/six519/titik2").install buildpath.children
    cd "src/github.com/six519/titik2" do
      system "go", "get", "github.com/go-sql-driver/mysql"
      system "go", "get", "github.com/mattn/go-sqlite3"
      system "go", "build", "-o", bin/"titik"
      prefix.install_metafiles
    end
  end

  test do
    system "false"
  end
end
