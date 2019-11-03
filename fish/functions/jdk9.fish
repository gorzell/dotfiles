function jdk9
  switch (uname)
  case Darwin
    set -x JAVA_HOME /Library/Java/JavaVirtualMachines/jdk-9.0.4.jdk/Contents/Home
  case Linux
    set -x JAVA_HOME $JDK_19
  end
end
