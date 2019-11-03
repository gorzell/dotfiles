# 'semantic': Run the semantic app via docker.
function semantic
  docker run -it --rm -u (id -u):(id -g) -v (pwd):/workspace:rw docker.registry.github.com/github/semantic:master $argv
end
