require 'pry'

# this method returns a hash, which you can pass to the remove_strawberry method:
# remove_strawberry(contacts)
def contacts
  {
    "Jon Snow" => {
      name: "Jon",
      email: "jon_snow@thewall.we",
      favorite_ice_cream_flavors: ["chocolate", "vanilla"]
    },
    "Freddie Mercury" => {
      name: "Freddie",
      email: "freddie@mercury.com",
      favorite_ice_cream_flavors: ["strawberry", "cookie dough", "mint chip"]
    }
  }
end

# emails = []

# contacts.each do |person, data|
#   puts "#{person}: #{data}"
#   # at this level, "person" is Jon Snow or Freddy Mercury and "data" is a hash of
#   # key/value pairs, to iterate over the "data" hash, we can use the following line:
#   data.each do |attribute, value|
#     puts "#{attribute}: #{value}"
#     if attribute == :email
#       emails << value
#     end
#     #at this level, "attribute" describes the key of :name, :email,
#     #:favorite_ice_cream_flavors, or :knows we need to first check and see if
#     #the key is :favorite_ice_cream_flavors, if it is, that means the VALUE is
#     #an array that we can iterate over to print out each element

#     if attribute == :favorite_ice_cream_flavors
#       value.each do |flavour|
#         # here, each index element is an ice cream flavour string
#         puts "#{flavour}"
#       end
#     end

#   end
# end

def remove_strawberry(contacts)
  contacts.each do |person, contact_details_hash|
    if person == "Freddie Mercury"
      contact_details_hash.each do |key, value|
        if key == :favorite_ice_cream_flavors
          value.delete_if{ |ice_cream| ice_cream === "strawberry" }
        end
      end
    end
  end
end

# print the output to the terminal for inspection
pp remove_strawberry(contacts)
