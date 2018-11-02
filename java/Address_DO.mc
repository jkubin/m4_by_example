# 2018/10/27 Josef Kubin
#
# sets automaton to produce Java code
DEPENDENT_OBJECT([Address])
#         name      type      getter
PROPERTY([street], [String], [getStreet])
PROPERTY([city],   [String], [getCity])
PROPERTY([state],  [String], [getState])
PROPERTY([zip],    [String], [getZip])
