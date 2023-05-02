class Ntfs3gOsx < Formula
    desc "The NTFS-3G driver is an open source, freely available read/write NTFS driver for Linux, FreeBSD, macOS, NetBSD, OpenIndiana, QNX and Haiku."
    homepage ""
    url "https://github.com/six519/ntfs-3g/archive/refs/tags/2022.10.3.tar.gz"
    sha256 "8bd7749ea9d8534c9f0664d48b576e90b96d45ec8803c9427f6ffaa2f0dde299"
    depends_on "autoconf" => :build
    depends_on "automake" => :build
    depends_on "libtool" => :build
    depends_on "libgcrypt" => :build
  
    def install
      system "./autogen.sh"
      system "./configure", "--exec-prefix=/usr/local"
      system "make"
      system "make", "install"
    end
  
    test do
      system "false"
    end
  end
  