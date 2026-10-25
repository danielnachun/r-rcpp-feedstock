sed -i -e "s/void R_init_Rcpp/__declspec(dllexport) void R_init_Rcpp/" src/rcpp_init.cpp
sed -i -e "s/void R_unload_Rcpp/__declspec(dllexport) void R_unload_Rcpp/" src/rcpp_init.cpp

"%R%" CMD INSTALL --build . %R_ARGS%
IF %ERRORLEVEL% NEQ 0 exit /B 1
