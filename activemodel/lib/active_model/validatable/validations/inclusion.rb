module ActiveModel
  module Validatable
    module Validations
      class ValidatesInclusionOf < Base
        options :in, :message => "{attribute_name} '{value}' must be one of {in}."
        required :in
        validate :in=>:include?
        
        def valid?(value)
          options[:in].include?(value)
        end
      end
    end
  end
end
