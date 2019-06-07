class Car < ApplicationRecord

    def make_model_year
        "#{self.year}" + " " + self.make + " " + self.model
    end

end
