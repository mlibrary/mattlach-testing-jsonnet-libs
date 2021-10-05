(import './wow-a-file.libsonnet') +
{
  local c = $._config.phineas,

  phineas+: {
    sleepPod: {
      apiVersion: "v1",
      kind: "Pod",
      metadata: { name: c.podName },
      spec: {
        containers: [{
          name: 'hello',
          image: 'debian:buster',
          command: ['sleep', "%d" % c.sleepSeconds]
        }]
      }
    }
  }
}
