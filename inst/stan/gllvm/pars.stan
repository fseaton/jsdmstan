  // Site intercepts
  real a_bar[site_intercept];
  real<lower=0> sigma_a[site_intercept];
  vector[N] a[site_intercept];

  // Species parameters

  //betas are hierarchical with covariance model
  vector<lower=0>[K] sigmas_b;
  matrix[K, S] z_species;
  // covariance matrix on betas by predictors
  cholesky_factor_corr[K] L_Rho_preds;


  // Factor parameters
  vector[M] L; // Non-zero factor loadings
  real<lower=0> sigma_L; // variance of species loadings

  // Latent variables
  matrix[D, N] LV_uncor; // Per-site latent variable
