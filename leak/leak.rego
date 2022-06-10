package accurics

## id 为策略在策略组中的唯一标识，由大小写英文字符、数字、"."、"_"、"-" 组成
## 建议按`组织_云商_资源名称/分类_编号`的格式进行命名
# @id: cloudiac_alicloud_security_p001

# @name: 限制实例规格
# @description: 限制实例规格为 nano 或者 small

## 策略类型，如 aws, k8s, github, alicloud, ...
# @policy_type: aws

## 资源类型，如 aws_ami, k8s_pod, alicloud_ecs, ...
# @resource_type: aliyun_ami

## 策略严重级别: 可选 high/medium/low
# @severity: medium

## 策略标签，多个分类使用逗号分隔
# @label: cat1,cat2

## 策略修复建议（支持多行）
# @fix_suggestion: 修改 instance_type 为包含 nano 或者 small 的实例类型。

leak[output] {
	output := opa.runtime()
}
