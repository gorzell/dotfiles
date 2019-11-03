# 'gr' (for fish + osx): run gradle in the current folder and notify when done
function gr
  for folder in . .. ../..
    if test -x $folder/gradlew
      set gradlew $folder/gradlew
      break
    end
  end
  if /bin/sh $gradlew $argv
    switch (uname)
    case Darwin
      terminal-notifier -title "gradle" -message "Build succeeded." ^/dev/null
    case Linux
      notify-send --urgency=normal -t 3000 "gradle" (basename $PWD)" build succeeded."
    end
  else
    switch (uname)
    case Darwin
      terminal-notifier -title "gradle" -message "BUILD FAILED :(" ^/dev/null
    case Linux
      notify-send --urgency=critical -t 4000 "gradle" (basename $PWD)" build FAILED :("
    end
  end
end
