require 'directors_database'

# Write a method that, given an NDS creates a new Hash
# The return value should be like:
#
# { directorOne => allTheMoneyTheyMade, ... }

def directors_totals(nds)
  result = {}
  nil
  row = 0 
  while row < nds.length do
    total_for_each_director = 0
    column = 0 
    while column < nds[row][:movies].length do
      one_director = nds[row][:movies][column][:worldwide_gross]
      total_for_each_director += one_director
      column += 1
    end
    result[nds[row][:name]] = total_for_each_director
    row += 1
  end
  
  result
  # pp result
end


# {:name=>"Wachowski Siblings",
#   :movies=>
#   [{:title=>"The Matrix Reloaded",
#     :studio=>"Warner Brothers",
#     :worldwide_gross=>281576461,
#     :release_year=>2003},
#     {:title=>"The Matrix",
#     :studio=>"Warner Brothers",
#     :worldwide_gross=>171479930,
#     :release_year=>1999},
#     {:title=>"The Matrix Revolutions",
#     :studio=>"Warner Brothers",
#     :worldwide_gross=>139313948,
#     :release_year=>2003},
#     {:title=>"Jupiter Ascending",
#     :studio=>"Warner Brothers",
#     :worldwide_gross=>139313948,
#     :release_year=>2015},
#     {:title=>"Speed Racer",
#     :studio=>"Warner Brothers",
#     :worldwide_gross=>47387723,
#     :release_year=>2008},
#     {:title=>"Cloud Atlas",
#     :studio=>"Warner Brothers",
#     :worldwide_gross=>27108272,
#     :release_year=>2012}]},

# Find a way to accumulate the :worldwide_grosses and return that Integer
# using director_data as input
def gross_for_director(director_data)
  
  puts director_data
  
end
