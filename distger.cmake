function(add_app_exec EXEC_NAME)
    include_directories(/opt/intel/oneapi/mkl/2022.0.2/include/)
    link_directories(/opt/intel/oneapi/mkl/2022.0.2/lib/intel64 )
    add_executable(${EXEC_NAME} ${EXEC_NAME}.cpp)
     target_link_libraries(${EXEC_NAME} PUBLIC ${MPI_LIBRARIES}  -lmkl_intel_ilp64 -lmkl_intel_thread -lmkl_core -liomp5 -lpthread -lm -ldl)
    #target_link_libraries(${EXEC_NAME} PUBLIC ${MPI_LIBRARIES} -mkl=sequential)
endfunction(add_app_exec)

# function(add_test_exec EXEC_NAME)
#     add_executable(${EXEC_NAME} ${EXEC_NAME}.cpp)
#     target_link_libraries(${EXEC_NAME} PUBLIC ${GTEST_LIBRARIES} ${MPI_LIBRARIES})
# endfunction(add_test_exec)

function(add_tool_exec EXEC_NAME)
    add_executable(${EXEC_NAME} ${EXEC_NAME}.cpp)
    target_link_libraries(${EXEC_NAME} PUBLIC ${MPI_LIBRARIES} -fopenmp)
endfunction(add_tool_exec)


