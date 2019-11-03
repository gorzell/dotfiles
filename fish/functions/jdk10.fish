function jdk10
  switch (uname)
  case Darwin
    set -x JAVA_HOME /Library/Java/JavaVirtualMachines/jdk-10.0.2.jdk/Contents/Home
  case Linux
    set -x JAVA_HOME $JDK_110
  end
end
