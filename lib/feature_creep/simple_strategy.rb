class FeatureCreep
  class SimpleStrategy

    def self.info
      lambda { |creep,feature|
        if feature
          {
            :percentage => (creep.active_percentage(feature) || 0).to_i,
            :scopes     => creep.active_scopes(feature).map { |g| g.to_sym },
            :individuals  => creep.active_individuals(feature),
            :global     => creep.active_global_features,
            :available_features => creep.features
          }
        else
          {
            :global     => creep.active_global_features,
            :available_features => creep.features
          }
        end
      }
    end

    def self.warden
      lambda { |creep,feature,individual|
        if individual
          creep.active_globally?(feature) ||
            creep.individual_in_active_scope?(feature, individual) ||
            creep.individual_active?(feature, individual) ||
            creep.individual_within_active_percentage?(feature, individual)
        else
          creep.active_globally?(feature)
        end
      }
    end
  end
end
