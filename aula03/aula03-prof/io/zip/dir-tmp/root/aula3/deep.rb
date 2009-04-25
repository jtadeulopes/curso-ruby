class Object
  def deep
    Marshal.load(Marshal.dump(self))
  end
end
