classdef market_model
  properties
    asset_process;
    volatility_process;
    interest_rate_process;
  endproperties

  methods (Access = protected)
    function model = market_model(asset_process, volatility_process, interest_rate_process)
      model.asset_process = asset_process;
      model.volatility_process = volatility_process;
      model.interest_rate_process = interest_rate_process;
    endfunction
  endmethods
endclassdef
