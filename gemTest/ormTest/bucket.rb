class Bucket < ActiveRecord::Base

  belongs_to :person
  has_many :marbles

  # A "standard interface" is a list of user-exposed fields for the endpoint
  fastapi_standard_interface [
                                 :id,
                                 :color,
                                 :material,
                                 :person,
                                 :marbles
                             ]

  # top level filters affect the data that is shown,
  #   while filters on "has_many" fields affect which rows are shown per
  #   record
  fastapi_default_filters({
                              marbles: {
                                  radius__lte: 10
                              }
                          })

end