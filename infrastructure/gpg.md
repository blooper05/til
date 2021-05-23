- install and set environment variable

```sh
brew install gpg
export GPG_TTY=$(tty)
```

- better for security, but it not works on Terraform

```sh
gpg --quick-gen-key "example <example@example.com>" future-default - 0
```

- this is the way to work with Terraform

```sh
gpg --quick-gen-key "example <example@example.com>" default default 0
terraform output aws_iam_access_key.terraform.encrypted_secret | base64 --decode | gpg -r example -d
```
