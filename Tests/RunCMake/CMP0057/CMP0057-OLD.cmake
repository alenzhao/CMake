cmake_policy(SET CMP0057 OLD)

add_custom_command(OUTPUT out1
  COMMAND ${CMAKE_COMMAND} -E echo out1
  MAIN_DEPENDENCY input.txt
)

add_custom_command(OUTPUT out2
  COMMAND ${CMAKE_COMMAND} -E echo out2
  MAIN_DEPENDENCY input.txt
)

add_custom_target(mytarget1 ALL DEPENDS out1 out2)
