class Titik < Formula
  desc "Titik Programming Language/Interpreter Written In Go Lang"
  homepage ""
  url "https://github.com/six519/titik2/archive/v3.0.0.tar.gz"
  sha256 "9b935d67e434decfd96df1afb145f02ebbb73137a7287b4b10821dec1606a2ce"
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
