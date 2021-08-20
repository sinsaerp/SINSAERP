object UniServerModule: TUniServerModule
  OldCreateOrder = False
  AutoCoInitialize = True
  TempFolder = 'temp\'
  SessionTimeout = 6000000
  Title = 'SINSA ERP'
  BGColor = clWhite
  AjaxTimeout = 300000
  SuppressErrors = [errObjectNotFound, errAjax]
  Bindings = <>
  ExtLocale = 'es'
  SSL.SSLOptions.RootCertFile = 'root.pem'
  SSL.SSLOptions.CertFile = 'cert.pem'
  SSL.SSLOptions.KeyFile = 'key.pem'
  SSL.SSLOptions.Method = sslvTLSv1_1
  SSL.SSLOptions.SSLVersions = [sslvTLSv1_1]
  SSL.SSLOptions.Mode = sslmUnassigned
  SSL.SSLOptions.VerifyMode = []
  SSL.SSLOptions.VerifyDepth = 0
  ExOptions.PatchVCL = False
  ExOptions.AllowUIChangeInDataRequest = False
  ConnectionFailureRecovery.ErrorMessage = 'Connection Error'
  ConnectionFailureRecovery.RetryMessage = 'Retrying...'
  Height = 225
  Width = 283
end
