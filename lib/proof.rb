require 'proof/token.rb'
require 'proof/proof_actions.rb'
require 'proof/require_proof.rb'

module Proof
#    ActiveSupport.on_load(:action_controller) do
#     if ActionController::Base.respond_to?(:prepend) &&
#        Object.method(:new).respond_to?(:super_method)
#       ActionController::Base.send :prepend, PdfHelper
#     else
#       ActionController::Base.send :include, PdfHelper
#     end
#     ActionView::Base.send :include, WickedPdfHelper::Assets
#   end
  
  ActiveSupport.on_load(:action_controller) do
    ActionController::Base.send :include, Proof::ProofActions
    ActionController::Base.send :include, Proof::RequireProof
  end
  
#   ActionController::Base.send :include, Proof::ProofActions
#   ActionController::Base.send :include, Proof::RequireProof
end
