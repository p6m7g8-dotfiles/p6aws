p6_aws_cfg_env_level() {
    local env_level="$1"

    export ENV_LEVEL=$env_level
}

p6_aws_cfg_env() {
    local env="$1"

    export AWS_ENV=$env
}

p6_aws_cfg_profile() {
    local profile="$1"

    export AWS_DEFAULT_PROFILE=$profile
    export AWS_PROFILE=$profile  # terraform
}

p6_aws_cfg_region() {
    local region="$1"

    export AWS_DEFAULT_REGION=$region
}

p6_aws_cfg_source_env_level() {

    export SOURCE_ENV_LEVEL=$1
}

p6_aws_cfg_source_env() {
    local env="$1"

    export AWS_SOURCE_ENV=$env
}

p6_aws_cfg_source_profile() {
    local profile="$1"

    export AWS_SOURCE_DEFAULT_PROFILE=$profile
    export AWS_SOURCE_PROFILE=$profile  # terraform
}

p6_aws_cfg_source_region() {
    local region="$1"

    export AWS_SOURCE_DEFAULT_REGION=$region
}

p6_aws_cfg_restore_source() {

    export AWS_DEFAULT_PROFILE=$AWS_SOURCE_DEFAULT_PROFILE
    export AWS_PROFILE=$AWS_SOURCE_PROFILE
    export AWS_DEFAULT_REGION=$AWS_SOURCE_DEFAULT_REGION
    export AWS_ENV=$AWS_SOURCE_ENV
    export AWS_VPC=$AWS_SOURCE_VPC
    export ENV_LEVEL=$SOURCE_ENV_LEVEL
}

p6_aws_cfg_restore_saved() {

    export AWS_DEFAULT_PROFILE=$AWS_SAVED_DEFAULT_PROFILE
    export AWS_PROFILE=$AWS_SAVED_PROFILE
    export AWS_DEFAULT_REGION=$AWS_SAVED_DEFAULT_REGION
    export AWS_ENV=$AWS_SAVED_ENV
    export AWS_VPC=$AWS_SAVED_VPC
    export ENV_LEVEL=$SAVED_ENV_LEVEL

    unset AWS_SAVED_DEFAULT_PROFILE
    unset AWS_SAVED_PROFILE
    unset AWS_SAVED_DEFAULT_REGION
    unset AWS_SAVED_ENV
    unset AWS_SAVED_VPC
    unset SAVED_ENV_LEVEL
}

p6_aws_cfg_save() {

    export AWS_SAVED_DEFAULT_PROFILE=$AWS_DEFAULT_PROFILE
    export AWS_SAVED_PROFILE=$AWS_PROFILE
    export AWS_SAVED_DEFAULT_REGION=$AWS_DEFAULT_REGION
    export AWS_SAVED_ENV=$AWS_ENV
    export AWS_SAVED_VPC=$AWS_VPC
    export SAVED_ENV_LEVEL=$ENV_LEVEL
}

p6_aws_cfg_clear() {

    alias aws && unalias aws
    unset AWS_DEFAULT_PROFILE
    unset AWS_PROFILE
    unset AWS_DEFAULT_REGION
    unset AWS_ENV
    unset AWS_VPC
    unset ENV_LEVEL
}

p6_aws_cfg_source_clear() {

    unset AWS_SOURCE_DEFAULT_PROFILE
    unset AWS_SOURCE_PROFILE
    unset AWS_SOURCE_DEFAULT_REGION
    unset AWS_SOURCE_ENV
    unset AWS_SOURCE_VPC
    unset SOURCE_ENV_LEVEL
}

p6_aws_cfg_set() {
    local profile="$1"
    local region="$2"
    local env="$3"
    local vpc="$4"
    local env_level="$5"

    p6_aws_cfg_profile "$profile"
    p6_aws_cfg_region "$region"
    p6_aws_cfg_env "$env"
    p6_aws_cfg_env_level "$env_level"
}

p6_aws_cfg_source_set() {
    local profile="$1"
    local region="$2"
    local env="$3"
    local vpc="$4"
    local env_level="$5"

    p6_aws_cfg_source_profile "$profile"
    p6_aws_cfg_source_region "$region"
    p6_aws_cfg_source_env "$env"
    p6_aws_cfg_source_env_level "$env_level"
}

p6_aws_cfg_show() {

    env | grep ^AWS_
}

p6_aws_cfg_reset() {

    local kv
    for kv in $(p6_aws_cfg_show); do
	local k=$(echo $kv | cut -f 1 -d '=')
	eval "unset $k"
    done
}
