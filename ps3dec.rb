class Ps3dec < Formula
    desc "An alternative ISO encryptor/decryptor for PS3 disc images"
    homepage ""
    url "https://github.com/six519/PS3Dec/archive/refs/tags/2.0.0.tar.gz"
    sha256 "1194adc88fc3f0a75bf90cafb65d463a409b45875a20337d8dd34a50ac81c3bf"
    depends_on "cmake" => :build
    depends_on "libomp" => :build
  
    def install
      system "mkdir", "build", "&&", "cd", "build", "&&", "cmake", "..", "&&", "make", "&&", "cp", "Release/ps3dec", bin
    end
  
    test do
      system "false"
    end
  end
  