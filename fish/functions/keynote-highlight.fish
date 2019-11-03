function keynote-highlight 
  switch (uname)
  case Darwin
    highlight -O rtf -l -s moria $argv | pbcopy
  case Linux
    highlight -O rtf -l -s moria $argv | xsel --clipboard --input
  end
end
