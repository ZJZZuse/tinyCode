class Marble < ActiveRecord::Base

  fastapi_standard_interface_nested [
                                        :id,
                                        :color,
                                        :radius
                                    ]

end