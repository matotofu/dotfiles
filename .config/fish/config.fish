if status is-interactive
    # Commands to run in interactive sessions can go here
end

set -g fish_greeting
set -Ux HSA_OVERRIDE_GFX_VERSION 11.0.0
set -Ux MOZ_ENABLE_WAYLAND 1
set -Ux QT_QPA_PLATFORM wayland-egl
set -Ux SDL_VIDEODRIVER wayland
set -Ux _JAVA_AWT_WM_NONREPARENTING 1
set -Ux VLLM_USE_MODELSCOPE True
set -Ux HIP_PATH /opt/rocm-6.1.0/
set -Ux ROCM_PATH /opt/rocm-6.1.0/
set -Ux ROCM_HOME /opt/rocm-6.1.0/
set -Ux CXX /opt/rocm-6.1.0/bin/hipcc
set -Ux GPU_ARCHS gfx1100
set -Ux ROCM_TARGET gfx1100
set -Ux HIP_PLATFORM amd
set -Ux HIP_VISIBLE_DEVICE 1
set -Ux DS_BUILD_CPU_ADAM 1
set -Ux TORCH_HIP_ARCH_LIST gfx1100
set -Ux LLAMA_HIPBLAS 1
set -Ux XDG_CONFIG_HOME /home/dash/.config

abbr ls "lsd -l"
abbr la "lsd -al"
abbr scs screenshot
abbr vi "emacsclient -c"
alias config "/usr/bin/git --git-dir=$HOME/.cfg/ --work-tree=$HOME"

zoxide init fish | source

source ~/.asdf/asdf.fish

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
if test -f /home/dash/mambaforge/bin/conda
    eval /home/dash/mambaforge/bin/conda "shell.fish" hook $argv | source
else
    if test -f "/home/dash/mambaforge/etc/fish/conf.d/conda.fish"
        . "/home/dash/mambaforge/etc/fish/conf.d/conda.fish"
    else
        set -x PATH /home/dash/mambaforge/bin $PATH
    end
end

if test -f "/home/dash/mambaforge/etc/fish/conf.d/mamba.fish"
    source "/home/dash/mambaforge/etc/fish/conf.d/mamba.fish"
end
# <<< conda initialize <<<
