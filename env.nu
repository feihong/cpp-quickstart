def b [...rest] {
  print $"clang++ -Wall -std=c++23 ($rest | str join ' ')"
  clang++ -Wall -std=c++23 ...$rest
}

def r [file ...rest] {
  print $"clang++ -Wall -std=c++23 ($file) ; ./a.out ($rest | str join ' ')"
  clang++ -Wall -std=c++23 $file
  ./a.out ...$rest
}

def w [file ...rest] {
  watch $file {||
    print $"clang++ -Wall -std=c++23 ($file) ; ./a.out ($rest | str join ' ')"
    clang++ -Wall -std=c++23 $file
    ./a.out ...$rest
  }
}

alias q = exit 0
