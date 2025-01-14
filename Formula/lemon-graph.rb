class LemonGraph < Formula
  desc "Library for Efficient Modeling and Optimization in Networks"
  homepage "https://lemon.cs.elte.hu/trac/lemon"
  head "https://github.com/The-OpenROAD-Project/lemon-graph"
  url "https://github.com/The-OpenROAD-Project/lemon-graph/archive/refs/tags/1.3.1.tar.gz"
  sha256 "f829a87c357b193a97987293030cb086b8fc7ef000eac24899efd3b822f383d8"
  revision 2
  license "BSL-1.0"

  depends_on "cmake" => :build

  def install
    system "cmake", "-B", "build", "-DCMAKE_INSTALL_PREFIX=#{prefix}", "."
    system "cmake", "--build", "build", "-j", "--target", "install"
  end
end
