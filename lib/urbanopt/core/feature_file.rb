# *********************************************************************************
# URBANopt™, Copyright © Alliance for Sustainable Energy, LLC.
# See also https://github.com/urbanopt/urbanopt-core-gem/blob/develop/LICENSE.md
# *********************************************************************************

module URBANopt
  module Core
    class FeatureFile
      ##
      # A FeatureFile contains multiple Features
      ##
      def initialize; end

      ##
      # Get the path to this FeatureFile
      ##
      def path
        raise 'path not implemented for FeatureFile, override in your class'
      end

      ##
      # Get a list of all Features in this FeatureFile
      ##
      def features
        raise 'features not implemented for FeatureFile, override in your class'
      end

      ##
      # Return a specific Feature by id, return nil if not found
      ##
      def get_feature_by_id(id)
        raise 'get_feature_by_id not implemented for FeatureFile, override in your class'
      end
    end
  end
end
