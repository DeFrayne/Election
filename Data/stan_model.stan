//Stan model for simple linear regression

data {
  int < lower = 1 > N; //Sample Size
  vector[N] x1; //Quarter 2 GDP
  vector[N] x2; //Gallop's June Approval Rating
  vector[N] x3; //Incumbency Score (Dummy Variable)
  vector[N] y; //Supervisor
}

parameters {
  real alpha; //Intercept
  real beta_q2gdp; //Slope
  real beta_juneapp; //Slope
  real beta_inc1; //Slope
  real < lower = 0 > sigma; //Error Standard Deviation
}

model {
  y ~ normal(alpha + x1 * beta_q2gdp + x2 * beta_juneapp + x3 * beta_inc1 , sigma); //Likelihood
}

generated quantities {

} //The posterior predictive distribution
