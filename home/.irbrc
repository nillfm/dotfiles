class Object
  def local_methods(obj = self)
    (obj.methods - obj.class.superclass.instance_methods).sort
  end
end


IRB.conf[:PROMPT][:CUSTOM] = {
    :PROMPT_I => ">> ",
    :PROMPT_S => "%l>> ",
    :PROMPT_C => ".. ",
    :PROMPT_N => ".. ",
    :RETURN => "=> %s\n"
}
IRB.conf[:PROMPT_MODE] = :CUSTOM
IRB.conf[:AUTO_INDENT] = true

