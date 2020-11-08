Testing Log
Testing center - University of Kansas Medical Center
Xing Song
11/06/2020

**Smoke Testing I - package installation**

> devtools::install_github("https://github.com/covidclinical/Phase2.1AKIRPackage", subdir="FourCePhase2.1AKI", upgrade=FALSE)

Error:
```
** libs
g++ -std=gnu++11 -I"/usr/lib64/R/include" -DNDEBUG  -I"/d1/home/xsong/R/x86_64-suse-linux-gnu-library/3.5/Rcpp/include" -I/usr/local/include  -I../inst/include  -fpic  -fmessage-length=0 -grecord-gcc-switches -fstack-protector -O2 -Wall -D_FORTIFY_SOURCE=2 -funwind-tables -fasynchronous-unwind-tables -c RcppArmadillo.cpp -o RcppArmadillo.o
RcppArmadillo.cpp:26:40: error: redeclaration ‘arma::arma_version::major’ differs in ‘constexpr’
 const unsigned int arma::arma_version::major;
                                        ^
In file included from ../inst/include/armadillo:91:0,
                 from ../inst/include/RcppArmadilloForward.h:49,
                 from ../inst/include/RcppArmadillo.h:31,
                 from RcppArmadillo.cpp:22:
../inst/include/armadillo_bits/arma_version.hpp:31:33: error: from previous declaration ‘arma::arma_version::major’
   static constexpr unsigned int major = ARMA_VERSION_MAJOR;
                                 ^
RcppArmadillo.cpp:26:40: error: declaration of ‘constexpr const unsigned int arma::arma_version::major’ outside of class is not definition [-fpermissive]
 const unsigned int arma::arma_version::major;
                                        ^
RcppArmadillo.cpp:27:40: error: redeclaration ‘arma::arma_version::minor’ differs in ‘constexpr’
 const unsigned int arma::arma_version::minor;
                                        ^
In file included from ../inst/include/armadillo:91:0,
                 from ../inst/include/RcppArmadilloForward.h:49,
                 from ../inst/include/RcppArmadillo.h:31,
                 from RcppArmadillo.cpp:22:
../inst/include/armadillo_bits/arma_version.hpp:32:33: error: from previous declaration ‘arma::arma_version::minor’
   static constexpr unsigned int minor = ARMA_VERSION_MINOR;
                                 ^
RcppArmadillo.cpp:27:40: error: declaration of ‘constexpr const unsigned int arma::arma_version::minor’ outside of class is not definition [-fpermissive]
 const unsigned int arma::arma_version::minor;
                                        ^
RcppArmadillo.cpp:28:40: error: redeclaration ‘arma::arma_version::patch’ differs in ‘constexpr’
 const unsigned int arma::arma_version::patch;
                                        ^
In file included from ../inst/include/armadillo:91:0,
                 from ../inst/include/RcppArmadilloForward.h:49,
                 from ../inst/include/RcppArmadillo.h:31,
                 from RcppArmadillo.cpp:22:
../inst/include/armadillo_bits/arma_version.hpp:33:33: error: from previous declaration ‘arma::arma_version::patch’
   static constexpr unsigned int patch = ARMA_VERSION_PATCH;
                                 ^
RcppArmadillo.cpp:28:40: error: declaration of ‘constexpr const unsigned int arma::arma_version::patch’ outside of class is not definition [-fpermissive]
 const unsigned int arma::arma_version::patch;
                                        ^
/usr/lib64/R/etc/Makeconf:168: recipe for target 'RcppArmadillo.o' failed
make: *** [RcppArmadillo.o] Error 1
ERROR: compilation failed for package ‘RcppArmadillo’
* removing ‘/d1/home/xsong/R/x86_64-suse-linux-gnu-library/3.5/RcppArmadillo’
Error in i.p(...) : 
  (converted from warning) installation of package ‘RcppArmadillo’ had non-zero exit status
```

****************

**Smoke Testing II - runAnalysis()**
```

```
