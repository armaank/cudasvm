#include "../include/error.h"

const char *QP_ERROR_MESSAGE[] = {
    "Problem data validation.",
    "Solver settings validation.",
    "Linear system solver not available.\nTried to obtain it from shared library.",
    "Linear system solver initialization.",
    "KKT matrix factorization.\nThe problem seems to be non-convex.",
    "Memory allocation.",
    "Solver workspace not initialized.",
};


int _qp_error(enum osqp_error_type error_code,
              const char * function_name) {
    print("ERROR in %s: %s\n", function_name, QP_ERROR_MESSAGE[error_code-1]);
    return (int)error_code;
}
