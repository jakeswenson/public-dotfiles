#!/usr/bin/env zsh

alias kctl='kubectl --context=${KUBE_CTX:-$(kubectl config current-context)} --namespace=${KUBE_NS:-default}'

function kctx() {
  export KUBE_CTX=$1
}

function kns() {
  export KUBE_NS=$1
}

function _kctx_comp() {
  _alternative "contexts:kube context:($(kubectl config get-contexts -oname | tr '\n' ' '))"
}

compdef _kctx_comp kctx

function _kns_comp() {
  local namespaces=$(kubectl get namespaces -oname | cut -d '/' -f 2 | tr '\n' ' ')
  _alternative "contexts:kube context:($namespaces)"
}

compdef _kns_comp kns