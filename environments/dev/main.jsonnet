local app = import 'ntppool/app.libsonnet';
app {
  config+:: {
    params+:: {
      ntppool+:: {
        image: 'quay.io/ntppool/ntppool:latest',
      },
    },
    data+:: {
      manage_tls: 'no',
      more_data: 'abc',
    },
  },
}
