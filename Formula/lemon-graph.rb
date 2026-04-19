class LemonGraph < Formula
    desc "Library for Efficient Modeling and Optimization in Networks"
    homepage "https://lemon.cs.elte.hu/trac/lemon"
    sha256 "efb6b59c9fc7e7a3f00b1666158a2168a11b76633aa163ca77feee017bc3aa2d"
    head "https://github.com/The-OpenROAD-Project/lemon-graph"
    url "https://github.com/The-OpenROAD-Project/lemon-graph/archive/refs/tags/1.3.1.1.tar.gz"
    version "1.3.1.1"
    license "BSL-1.0"

    depends_on "cmake" => :build

    def install
        system "cmake", "-B", "build", "-DLEMON_ENABLE_SOPLEX=FALSE", "-DCMAKE_INSTALL_PREFIX=#{prefix}", "-DCMAKE_POLICY_VERSION_MINIMUM=3.5","."
        system "cmake", "--build", "build", "-j", "--target", "install"
    end
end
