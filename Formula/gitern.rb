class Gitern < Formula
  url "https://files.gitern.com/gitern.pkg"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
  end
end
