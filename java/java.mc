# 2018/10/27 Josef Kubin
#
DEPENDENT_OBJECT([Address])
#         name      type      getter           setter
PROPERTY([street], [String], [getStreet],     [setStreet])
PROPERTY([city],   [String], [getCity])
PROPERTY([state],  [String], [getState])
PROPERTY([zip],    [String], [getZip])

DEPENDENT_OBJECT([Vegetable])
#         name      type      getter           setter
PROPERTY([name],   [String], [getName])
PROPERTY([kind],   [String], [getKind])
PROPERTY([occurr], [String], [getOccurence],  [setOccurence])
PROPERTY([color],  [String], [getColor])
PROPERTY([size],   [float],  [getSize],       [setSize])
PROPERTY([edible], [boolean],[getEdible])

DEPENDENT_OBJECT([Animal])
#         name      type      getter           setter
PROPERTY([name],   [String], [getName])
PROPERTY([birth],  [long],   [getBirth])
PROPERTY([wild],   [boolean],[getWildness])
PROPERTY([mamal],  [boolean],[getMamal])

DEPENDENT_OBJECT([Motorcycle])
#         name      type      getter           setter
PROPERTY([name],   [String], [getName])
PROPERTY([color],  [String], [getColor])

DEPENDENT_OBJECT([Person])
#         name      type      getter           setter
PROPERTY([name],   [String], [getName])
PROPERTY([birth],  [long],   [getBirth])
PROPERTY([sex],    [boolean],[getSex])
PROPERTY([address],[String], [getAddress],    [setAddress])
PROPERTY([educat], [String], [getEducation],  [setEducation])
PROPERTY([salary], [int],    [getSalary],     [setSalary])
