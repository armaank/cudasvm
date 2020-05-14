#include "osqp.h"    // OSQP API
#include "minunit.h" // Basic testing script header


#include "basic_svm/data.h"


static const char* test_basic_svm_solve()
{
  c_int exitflag;

  // Problem settings
  OSQPSettings *settings = (OSQPSettings *)c_malloc(sizeof(OSQPSettings));

  // Structures
  OSQPSolver *solver; // Workspace
  OSQPTestData *data;      // Data
  basic_svm_sols_data *sols_data;


  // Populate data
  data = generate_problem_basic_svm();
  sols_data = generate_problem_basic_svm_sols_data();


  // Define Solver settings as default
  osqp_set_default_settings(settings);
  settings->alpha   = 1.6;
  settings->rho     = 0.1;
  settings->polish  = 1;
  settings->verbose = 1;

  // Setup workspace
  exitflag = osqp_setup(&solver, data->P, data->q,
                        data->A, data->l, data->u,
                        data->m, data->n, settings);

  // Setup correct
  mu_assert("Basic QP 2 test solve: Setup error!", exitflag == 0);

  // Solve Problem first time
  osqp_solve(solver);

  // Compare solver statuses
  mu_assert("Basic QP 2 test solve: Error in solver status!",
            solver->info->status_val == sols_data->status_test);

  // Compare primal solutions
  mu_assert("Basic QP 2 test solve: Error in primal solution!",
            vec_norm_inf_diff(solver->solution->x, sols_data->x_test,
                              data->n) /
            vec_norm_inf(sols_data->x_test_new, data->n) < TESTS_TOL);


  // Compare dual solutions
  mu_assert("Basic QP 2 test solve: Error in dual solution!",
            vec_norm_inf_diff(solver->solution->y, sols_data->y_test,
                              data->m) /
            vec_norm_inf(sols_data->y_test_new, data->m) < TESTS_TOL);

  // Compare objective values
  mu_assert("Basic QP 2 test solve: Error in objective value!",
            c_absval(solver->info->obj_val - sols_data->obj_value_test)/(c_absval(sols_data->obj_value_test)) < TESTS_TOL);

  // Clean workspace
  osqp_cleanup(solver);

  // Cleanup settings and data
  c_free(settings);
  clean_problem_basic_svm(data);
  clean_problem_basic_svm_sols_data(sols_data);

  return 0;
}

static const char* test_basic_svm()
{
  mu_run_test(test_basic_svm_solve);
 //mu_run_test(test_basic_qp2_update);

  return 0;
}