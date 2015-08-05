module Twilio
  module Resources
    module V2010
      class AccountInstance
        class UsageList
          class UsageRecordList
            class UsageRecordThisMonthList < ListResource
              can :list
              command_alias :usage_record_this_months
              
              def initialize(client, inheritance={})
                super
                path "/Accounts/#{@account_sid}/Usage/Records/ThisMonth"
                instance_id_key 'sid'
                instance_class UsageRecordThisMonthInstance
              end
            end
          
            class UsageRecordThisMonthInstance < InstanceResource
              def initialize(client, inheritance={}, params={})
                super
                instance_id_key 'sid'
              end
            end
          end
        end
      end
    end
  end
end