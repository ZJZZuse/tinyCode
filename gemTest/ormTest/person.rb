class Person < ActiveRecord::Base

  # Person is not top-level in the case of the "buckets"
  #   endpoint... we use a special setting indicating
  #   which fields to use if Person happens to be nested.

  # You can NOT include dependent fields here. (belongs_to, has_many)
  #   This is a hard-and-fast FastAPI rule that prevents overly
  #   complex nesting scenarios.

  fastapi_standard_interface_nested [
                                        :id,
                                        :name,
                                        :gender,
                                        :age
                                    ]

end