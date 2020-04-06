Aws.config.update({
  region: 'us-east-1',
  credentials: Aws::Credentials.new('AKIAICFODFF74457QRSQ', '1sWU8asKIAZT4228mEzgGgBcD3cv22q2fLvaLU7G'),
})

S3_BUCKET = Aws::S3::Resource.new.bucket('appnvslicencas')