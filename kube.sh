alias kn='kubectl -n kube-system'
alias k='kubectl'
alias h='helm'
alias hn='helm -n kube-system'

function setpxpod() {
    PX_POD=$(kubectl get pods -l name=portworx -n kube-system -o jsonpath='{.items[0].metadata.name}')
}

function ppxctl() {
    kubectl exec $PX_POD -n kube-system -it -- /opt/pwx/bin/pxctl "$@"
}

export PATH=$PATH:$HOME/go/bin
