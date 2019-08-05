using PowerModelsACDC
using PowerModels
using Ipopt
using Memento
using JuMP


ipopt = JuMP.with_optimizer(Ipopt.Optimizer, tol=1e-6, print_level=0)
s = Dict("output" => Dict("branch_flows" => true), "conv_losses_mp" => true)

## case5_3
file5_3 = "case5_3_he.m"
data = PowerModels.parse_file(file5_3)
data["convdc"] = data["dcconv"]
data["busdc"] = data["dcbus"]
data["branchdc"] = data["dcbranch"]
PowerModelsACDC.process_additional_data!(data)
result5_3 = run_acdcopf(data, ACPPowerModel, ipopt; setting = s)

file39_10 = "case39_10_he.m"
data = PowerModels.parse_file(file39_10)
data["convdc"] = data["dcconv"]
data["busdc"] = data["dcbus"]
data["branchdc"] = data["dcbranch"]
PowerModelsACDC.process_additional_data!(data)
result39_10 = run_acdcopf(data, ACPPowerModel, ipopt; setting = s)

file24_7 = "case24_7_jb.m"
data = PowerModels.parse_file(file24_7)
data["convdc"] = data["dcconv"]
data["busdc"] = data["dcbus"]
data["branchdc"] = data["dcbranch"]
PowerModelsACDC.process_additional_data!(data)
result24_7 = run_acdcopf(data, ACPPowerModel, ipopt; setting = s)

file3120_5 = "case3120_5_he.m"
data = PowerModels.parse_file(file3120_5)
data["convdc"] = data["dcconv"]
data["busdc"] = data["dcbus"]
data["branchdc"] = data["dcbranch"]
PowerModelsACDC.process_additional_data!(data)
result3120_5 = run_acdcopf(data, ACPPowerModel, ipopt; setting = s)
