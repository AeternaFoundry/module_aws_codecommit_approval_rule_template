variable "codecommit_approval_rule_templates" {
  description = <<EOT
Map of codecommit_approval_rule_templates, attributes below
Required:
    - content
    - name
Optional:
    - description
    - region
EOT

  type = map(object({
    content     = string
    name        = string
    description = optional(string)
    region      = optional(string)
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

