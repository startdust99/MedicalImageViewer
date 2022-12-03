local base = import 'aliyun/base/client.libsonnet';
local tmpl = import 'aliyun/eci/md_notebook/template.libsonnet';

{
  Client: base.Client {
    AccessKeyId: 'LTAI5t9gmHFASBGD8yo9AbPi',
    AccessKeySecret: 'FDk7sPqpBwaK55IYFhVVGkQaih6xtE',
    RegionId: 'cn-zhangjiakou',
  },
  ContainerGroup: tmpl.ContainerGroup {
    NFSServer:: '9e71f4910a-dyi78.cn-zhangjiakou.nas.aliyuncs.com',
    // Your security group needs to allow port 8888
    SecurityGroupId: 'sg-8vbgsm97kgbhethyel2y',
    VSwitchId: 'vpc-8vbcw65tnnqo26244ix4a',

    // Select an instance type
    InstanceType: 'ecs.gn6i-c4g1.xlarge',
  },
}
