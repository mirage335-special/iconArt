##### Core



_fetch_iconArt_forge() {
    _messagePlain_nominal '_fetch_iconArt_forge'

    local functionEntryPWD
    functionEntryPWD="$PWD"

    mkdir -p "$scriptBundle"
    cd "$scriptBundle"
    
    rm -f "$scriptBundle"/run.log

    rm -f "$scriptBundle"/webui_forge_cu121_torch21.7z
    rm -f "$scriptBundle"/webui_forge_cu121_torch231.7z
    rm -f "$scriptBundle"/webui_forge_cu124_torch24.7z

    # Latest releases include MSWindows support and an installation of A1111/Forge for MSWindows .
    # WARNING: May be necessary to run 'update.bat' and 'run.bat' .
    # https://github.com/lllyasviel/stable-diffusion-webui-forge?tab=readme-ov-file#installing-forge
    #! _aria2c_iconArt "https://github.com/lllyasviel/stable-diffusion-webui-forge/releases/download/latest/webui_forge_cu121_torch231.7z" "webui_forge_cu121_torch231.7z" && _messageFAIL
    #! _wget_githubRelease "lllyasviel/stable-diffusion-webui-forge" "" "webui_forge_cu121_torch231.7z" && _messageFAIL
    ! wget 'https://github.com/lllyasviel/stable-diffusion-webui-forge/releases/download/latest/webui_forge_cu121_torch231.7z' && _messageFAIL

    # May be possible to splice this git repository with a release of A1111/Forge for MSWindows .
    # https://github.com/Panchovix/stable-diffusion-webui-reForge
    
    cd "$functionEntryPWD"

    #cksum webui_forge_cu121_torch231.7z
    #_if_cygwin && sleep 22

    return 0
}
_fetch_iconArt_forge-built() {
    _messagePlain_nominal '_fetch_iconArt_forge-built'

    local functionEntryPWD
    functionEntryPWD="$PWD"

    mkdir -p "$scriptBundle"
    cd "$scriptBundle"
    
    rm -f "$scriptBundle"/run.log
    rm -f "$scriptBundle"/run*.log

    rm -f "$scriptBundle"/webui_forge_cu121_torch21.7z
    rm -f "$scriptBundle"/webui_forge_cu121_torch231.7z
    rm -f "$scriptBundle"/webui_forge_cu124_torch24.7z

    rm -f "$scriptBundle"/webui_forge_cu121_torch21-*.7z
    rm -f "$scriptBundle"/webui_forge_cu121_torch231-*.7z
    rm -f "$scriptBundle"/webui_forge_cu124_torch24-*.7z
    
    #! _wget_githubRelease "mirage335-special/iconArt" "" "run.log" && _messageFAIL
    #! _wget_githubRelease_join "mirage335-special/iconArt" "" "webui_forge_cu121_torch231.7z" && _messageFAIL
    #! _wget_githubRelease_join "mirage335-special/iconArt" "internal" "webui_forge_cu121_torch231.7z" && _messageFAIL
    
    #! _wget_githubRelease "soaringDistributions/iconArt-build" "" "run.log" && _messageFAIL
    #! _wget_githubRelease_join "soaringDistributions/iconArt-build" "" "webui_forge_cu121_torch231.7z" && _messageFAIL
    #! _wget_githubRelease_join "soaringDistributions/iconArt-build" "internal" "webui_forge_cu121_torch231.7z" && _messageFAIL

    #! _wget_githubRelease_join "soaringDistributions/iconArt-build" "" "webui_forge_cu121_torch231-Lenovo_P1_Gen6_i913900h_RTX4090.7z" && _messageFAIL
    ! _wget_githubRelease_join "soaringDistributions/iconArt-build" "internal" "webui_forge_cu121_torch231-Lenovo_P1_Gen6_i913900h_RTX4090.7z" && _messageFAIL


    #! _wget_githubRelease_join "soaringDistributions/iconArt-build" "" "stable-diffusion-webui-forge-lllyasviel-linux.tar.xz" && _messageFAIL
    ! _wget_githubRelease_join "soaringDistributions/iconArt-build" "internal" "stable-diffusion-webui-forge-lllyasviel-linux.tar.xz" && _messageFAIL

    ##! _wget_githubRelease_join "soaringDistributions/iconArt-build" "" "stable-diffusion-webui-reForge-Panchovix-linux.tar.xz" && _messageFAIL
    #! _wget_githubRelease_join "soaringDistributions/iconArt-build" "internal" "stable-diffusion-webui-reForge-Panchovix-linux.tar.xz" && _messageFAIL
    
    cd "$functionEntryPWD"

    #cksum webui_forge_cu121_torch231.7z
    #_if_cygwin && sleep 22

    return 0
}

_fetch_iconArt_models() {
    _messagePlain_nominal '_fetch_iconArt_models'
    
    local functionEntryPWD
    functionEntryPWD="$PWD"

    mkdir -p "$scriptBundle"
    cd "$scriptBundle"

    rm -f "$scriptBundle"/*


    # WARNING: Files that are not substantially more useful for a mainstream essential purpose (eg. icons, clip art) than other files here WILL BE REMOVED .

    cp -n "$scriptAbsoluteFolder"/faipl-1.0-sd.txt "$scriptBundle"/
    cp -n "$scriptAbsoluteFolder"/license-sdxl_1.0.txt "$scriptBundle"/
    cp -n "$scriptAbsoluteFolder"/license-noobai-xl-nai-xl.txt "$scriptBundle"/
    cp -n "$scriptAbsoluteFolder"/agpl-3.0.txt "$scriptBundle"/
    cp -n "$scriptAbsoluteFolder"/gpl-2.0.txt "$scriptBundle"/


    #_fetch_iconArt_forge
    #_fetch_iconArt_forge-built


    # noobaiXLNAIXL_epsilonPred05Version, Version: f2.0.1v1.10.1-previous-501-g668e87f9
    #_messagePlain_request https://civitai.com/models/833294?modelVersionId=968495
    #! _aria2c_iconArt "https://huggingface.co/nnnn1111/models/resolve/main/noobaiXLNAIXL_epsilonPred05Version.safetensors" "noobaiXLNAIXL_epsilonPred05Version.safetensors" && _messageFAIL
    ! _wget_githubRelease_join "mirage335-special/iconArt_bundle" "" "noobaiXLNAIXL_epsilonPred05Version.safetensors" && _messageFAIL
    #! _wget_githubRelease_join "mirage335-special/iconArt_bundle" "internal" "noobaiXLNAIXL_epsilonPred05Version.safetensors" && _messageFAIL
    
    # illustriousXL_v01, Version: f2.0.1v1.10.1-previous-501-g668e87f9
    #https://huggingface.co/OnomaAIResearch/Illustrious-xl-early-release-v0/blob/main/Illustrious-XL-v0.1.safetensors

    # animagineXLV31_v31, Version: f2.0.1v1.10.1-previous-501-g668e87f9, Model hash: cedf157a80
    ! _aria2c_iconArt "https://huggingface.co/cagliostrolab/animagine-xl-3.1/resolve/main/animagine-xl-3.1.safetensors" "animagine-xl-3.1.safetensors" && _messageFAIL
    #! _wget_githubRelease_join "mirage335-special/iconArt_bundle" "" "animagine-xl-3.1.safetensors" && _messageFAIL
    #! _wget_githubRelease_join "mirage335-special/iconArt_bundle" "internal" "animagine-xl-3.1.safetensors" && _messageFAIL
    

    # FEGBA-Sprites-illus_Fp
    #_messagePlain_request https://civitai.com/models/949388/fire-emblem-gba-sprite-style-illustrious?modelVersionId=1062945
    ! _wget_githubRelease "mirage335-special/iconArt_bundle" "" "FEGBA-Sprites-illus_Fp.safetensors" && _messageFAIL


    #cksum ./*

    cd "$functionEntryPWD"

    #_if_cygwin && sleep 22

    return 0
}

_fetch_iconArt() {
    _messageNormal '_fetch_iconArt'
    
    local functionEntryPWD
    functionEntryPWD="$PWD"

    mkdir -p "$scriptBundle"
    cd "$scriptBundle"

    rm -f "$scriptBundle"/*

    _fetch_iconArt_models
    _fetch_iconArt_forge
    #_fetch_iconArt_forge-built


    cksum ./*

    cd "$functionEntryPWD"

    _if_cygwin && sleep 22
    return 0
}



_join_iconArt() {
    _messagePlain_probe_cmd _join_iconArt "$scriptBundle"/noobaiXLNAIXL_epsilonPred05Version.safetensors
    
    _messagePlain_probe_cmd _join_iconArt "$scriptBundle"/animagine-xl-3.1.safetensors
}
_split_file_iconArt() {
    local functionEntryPWD
	functionEntryPWD="$PWD"
    
    
    local currentIteration
    currentIteration=""
	for currentIteration in $(seq -w 0 24)
	do
		[[ -s "$1" ]] && [[ -e "$1" ]] && tail -c 1856000000 "$1" > "$1".part"$currentIteration" && truncate -s -1856000000 "$1"
	done
    rm -f "$1"


    cd "$functionEntryPWD"
}
#_join_iconArt "$scriptBundle"/noobaiXLNAIXL_epsilonPred05Version.safetensors
#_join_iconArt "$scriptBundle"/animagine-xl-3.1.safetensors
_join_file_iconArt() {
    local functionEntryPWD
    functionEntryPWD="$PWD"


    local currentIteration
    currentIteration=""
    for currentIteration in $(seq -w 0 24 | sort -r)
    do
        _messagePlain_probe_var currentIteration
        [[ -e "$1".part"$currentIteration" ]] && dd if="$1".part"$currentIteration" bs=1M status=progress >> "$1"
    done


    cd "$functionEntryPWD"
}
_aria2c_iconArt() {
    aria2c --log=- --log-level=info -x "3" -o "$2" "$1"
}

# WARNING: Do NOT use. Apparently 'gh', while normally available on other ubcp/Cygwin/MSW systems, is not available this way under GitHub Actions MSWindows Runners.
_release_split_iconArt() {
    #gh release create build-${{ github.run_id }}-${{ github.run_attempt }} --title build --notes ""

    local currentFile
    for currentFile in "$1".part*
    do
        "$scriptAbsoluteLocation" _stopwatch gh release upload "$2" "$currentFile" &
        while [[ $(jobs | wc -l) -ge 12 ]]
        do
            sleep 2
        done
    done
    wait
}


_refresh_anchors() {
    cp -a "$scriptAbsoluteFolder"/_anchor "$scriptAbsoluteFolder"/_fetch_iconArt
    cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_fetch_iconArt.bat

    cp -a "$scriptAbsoluteFolder"/_anchor "$scriptAbsoluteFolder"/_fetch_iconArt_models
    cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_fetch_iconArt_models.bat
    cp -a "$scriptAbsoluteFolder"/_anchor "$scriptAbsoluteFolder"/_fetch_iconArt_forge
    cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_fetch_iconArt_forge.bat
    cp -a "$scriptAbsoluteFolder"/_anchor "$scriptAbsoluteFolder"/_fetch_iconArt_forge-built
    cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_fetch_iconArt_forge-built.bat

    cp -a "$scriptAbsoluteFolder"/_anchor.bat "$scriptAbsoluteFolder"/_bin.bat
}
