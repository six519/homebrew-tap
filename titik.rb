class Titik < Formula
  desc "Titik Programming Language/Interpreter Written In Go Lang"
  homepage ""
  url "https://github.com/six519/titik2/archive/refs/tags/v3.5.0.tar.gz"
  sha256 "2e5c915237a6f6ffcb6c122c6be45ecd84891855447710acd39dee156346e8a1"
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
