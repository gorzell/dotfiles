function jdk8
  switch (uname)
  case Darwin
    set -x JAVA_HOME /Library/Java/JavaVirtualMachines/jdk1.8.0_172.jdk/Contents/Home
  case Linux
    set -x JAVA_HOME $JDK_18
  end
end
