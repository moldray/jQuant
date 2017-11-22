using Weave

markdown(file) = begin
  try
    weave(file, out_path = "$(pwd())/public")
  catch
    println("wait to be modified")
  end
end

watch(file) = begin
  watch_file(file)
  markdown(file)
  watch(file)
end
