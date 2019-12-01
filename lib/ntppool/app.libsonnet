local config = import 'config.libsonnet';
local k = import 'ksonnet/ksonnet.beta.4/k.libsonnet';

config + k {
  // namespace: $.core.v1.namespace.new(config.params.namespace),
  ntppool_configsecret: $.core.v1.secret.new('ntppool-secrets', config.data),
}
