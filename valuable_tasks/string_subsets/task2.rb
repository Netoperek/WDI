# For set of uniq letters return
# all its subsets
#

$subsets = []

def string_subsets(string, output, n)
  if n > string.size-1
    unless output == ''
      $subsets << output
    end
  else
    string_subsets(string, output + string[n], n+1)
    string_subsets(string, output, n+1)
  end
end
