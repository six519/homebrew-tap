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
      system "make", "TARGET=MACOSX", "DATADIR_MACOSX=#{share}/data", "BINARYDIR_MACOSX=#{bin}", "CONFIGDIR_MACOSX=#{bin}"
      system "make", "TARGET=MACOSX", "DATADIR_MACOSX=#{share}/data", "BINARYDIR_MACOSX=#{bin}", "CONFIGDIR_MACOSX=#{bin}", "install"
    end
  
    test do
      system "false"
    end
  end
  