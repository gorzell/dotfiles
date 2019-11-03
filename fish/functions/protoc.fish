# 'protoc': Run the protoc compiler via docker.
function protoc
  docker run -it --rm -u (id -u):(id -g) -v (pwd):/workspace:rw chaossystems/protoc:local $argv
end
