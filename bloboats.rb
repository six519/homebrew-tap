class Bloboats < Formula
    desc "Bloboats is a side-scrolling arcade racing game"
    homepage ""
    url "https://github.com/six519/bloboats/archive/refs/tags/1.0.2.tar.gz"
    sha256 "79ea1c3716ca65c4d3d212e23b5c6db8eddfe22a9f1c4ac88504f61d27e4447b"
    depends_on "libvorbis" => :build
    depends_on "sdl12-compat" => :build
    depends_on "sdl_image" => :build
    depends_on "sdl_mixer" => :build
    depends_on "sdl_net" => :build
  
    def install
      ENV["TARGET"] = "MACOSX"
      ENV["DATADIR_MACOSX"] = "#{share}/data"
      ENV["BINARYDIR_MACOSX"] = bin
      ENV["CONFIGDIR_MACOSX"] = bin
      system "make"
      system "make", "install"
    end
  
    test do
      system "false"
    end
  end
  