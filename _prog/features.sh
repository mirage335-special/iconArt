
_build_a1111forge-linux-run() {
    #./ubiquitous_bash.sh ...
    _timeout 300 ./_lib/stable-diffusion-webui-forge-lllyasviel/webui.sh --skip-torch-cuda-test
}

_compress_a1111forge-linux() {
    cd "$scriptLib"
    #cd ./_lib
    #tar -cf - stable-diffusion-webui-forge-lllyasviel | lz4 -z --fast=1 - "$scriptLocal"/stable-diffusion-webui-forge-lllyasviel-linux.tar.flx
    env XZ_OPT="-0 -T0" tar -cJf "$scriptLocal"/stable-diffusion-webui-forge-lllyasviel-linux.tar.xz stable-diffusion-webui-forge-lllyasviel
}

_split_a1111forge-linux() {
    #./ubiquitous_bash.sh ...
    _split_file_iconArt "$scriptLocal"/stable-diffusion-webui-forge-lllyasviel-linux.tar.xz
}



_fetch_iconArt_forge-static() {
    #mkdir -p ./_bundle
    #cd ./_bundle
    #./ubiquitous_bash.sh _wget_githubRelease_join "soaringDistributions/iconArt-build" "static" "DUMMY_PASSWORD_x-webui_forge_cu121_torch231-static-Lenovo_P1_Gen6_i913900h_RTX4090.hc"
    #./ubiquitous_bash.sh _split_file_iconArt "DUMMY_PASSWORD_x-webui_forge_cu121_torch231-static-Lenovo_P1_Gen6_i913900h_RTX4090.hc"

    _messagePlain_nominal '_fetch_iconArt_forge-static'

    local functionEntryPWD
    functionEntryPWD="$PWD"

    mkdir -p "$scriptBundle"
    cd "$scriptBundle"
    
    rm -f "$scriptBundle"/run*

    rm -f "$scriptBundle"/webui_forge_cu121_torch21-*
    rm -f "$scriptBundle"/webui_forge_cu121_torch231-*
    rm -f "$scriptBundle"/webui_forge_cu124_torch24-*

    rm -f "$scriptBundle"/stable-diffusion-webui*
    
    
    #! _wget_githubRelease_join "soaringDistributions/iconArt-build" "static" "webui_forge_cu121_torch231-Lenovo_P1_Gen6_i913900h_RTX4090.7z" && _messagePlain_bad 'bad: fail: wget/join' && _messageFAIL
    #! _split_file_iconArt "webui_forge_cu121_torch231-Lenovo_P1_Gen6_i913900h_RTX4090.7z" && _messagePlain_bad 'bad: fail: split' && _messageFAIL
    
    ! "$scriptAbsoluteLocation" _wget_githubRelease_join "soaringDistributions/iconArt-build" "static" "DUMMY_PASSWORD_x-webui_forge_cu121_torch231-static-Lenovo_P1_Gen6_i913900h_RTX4090.hc" && _messagePlain_bad 'bad: fail: wget/join' && _messageFAIL
    ! _split_file_iconArt "DUMMY_PASSWORD_x-webui_forge_cu121_torch231-static-Lenovo_P1_Gen6_i913900h_RTX4090.hc" && _messagePlain_bad 'bad: fail: split' && _messageFAIL
    
    cd "$functionEntryPWD"

    #cksum webui_forge_cu121_torch231.7z
    #_if_cygwin && sleep 22

    return 0
}
