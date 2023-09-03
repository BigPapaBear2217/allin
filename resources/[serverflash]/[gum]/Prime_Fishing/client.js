exports('DisplayLeftNotification', (title, subTitle, iconDict, icon, duration) => {

  const struct1 = new DataView(new ArrayBuffer(48));
  struct1.setInt32(0, duration, true);
  struct1.setInt32(8, 0, true);
  struct1.setInt32(16, 0, true);
  
  const string1 = CreateVarString(10, "LITERAL_STRING", title);
  const string2 = CreateVarString(10, "LITERAL_STRING", subTitle);
  
  const struct2 = new DataView(new ArrayBuffer(72));
  struct2.setBigInt64(8, BigInt(string1), true);
  struct2.setBigInt64(16, BigInt(string2), true);
  struct2.setBigInt64(32, BigInt(GetHashKey(iconDict)), true);
  struct2.setBigInt64(40, BigInt(GetHashKey(icon)), true);

  struct2.setInt32(48, 0, true);
  struct2.setInt32(56, 1, true);
  struct2.setInt32(64, 0, true);
  
  setTimeout(function(){ 
  Citizen.invokeNative("0x26E87218390E6729", struct1, struct2, 1, 1);}, 250);
});

exports('GET_TASK_FISHING_DATA', (ped) => {
    let buffer = new ArrayBuffer(8 * 28);
    let view = new DataView(buffer);
    let hasMinigameOn = Citizen.invokeNative("0xF3735ACD11ACD500", PlayerPedId(), view);
    view.setFloat32(8 * 1, Int32ToFloat32(view.getInt32(8 * 1)));
    let outAsInt = new Int32Array(buffer);
    let outAsFloat = new Float32Array(buffer);
    return [hasMinigameOn, outAsInt, outAsFloat];
});

exports('SET_TASK_FISHING_DATA', (struct) => {
    let buffer = new ArrayBuffer(8 * 28);
    let view = new DataView(buffer);
    for (i = 0; i <= 21; i++) {
        let k = `f_${i}`;
        v = struct[k];
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 8:
            case 9:
            case 13:
            case 14:
            case 15:
            case 17:
            case 20:
            case 21:
                2
                v = Float32ToInt32(v);
                break;
        }
        view.setUint32(i * 8, v, true);
    }
    let r = Citizen.invokeNative("0xF3735ACD11ACD501", PlayerPedId(), view);
});

exports('GET_TASK_FISHING_DATA2', (ped) => {
    let buffer = new ArrayBuffer(256);
    let view = new DataView(buffer);
    let hasMinigameOn = Citizen.invokeNative("0xF3735ACD11ACD500", PlayerPedId(), view);
    let outAsInt = new Int32Array(buffer);
    let outAsFloat = new Float32Array(buffer);
    return [hasMinigameOn, outAsInt, outAsFloat];
});

exports('SET_TASK_FISHING_DATA2', (struct) => {
    let buffer = new ArrayBuffer(256);
    let view = new DataView(buffer);
    for (i = 0; i <= 27; i++) {
        let k = `f_${i}`;
        v = struct[k];
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 4:
            case 8:
            case 9:
            case 13:
            case 14:
            case 15:
            case 17:
            case 20:
            case 21:
            case 22:
            case 23:
            case 24:
            case 25:
            case 26:
            case 27:
                v = Float32ToInt32(v);
                break;
        }
        view.setUint32(i * 8, v, true);
    }
    let r = Citizen.invokeNative("0xF3735ACD11ACD501", PlayerPedId(), view);
});

function Int32ToFloat32(num) {
    arr = new ArrayBuffer(4); // an Int32 takes 4 bytes
    view = new DataView(arr);
    view.setUint32(0, num, false); // byteOffset = 0; litteEndian = false
    return view.getFloat32(0);
}

function Float32ToInt32(num) {
    arr = new ArrayBuffer(16); // an Float32 takes 4 bytes
    view = new DataView(arr);
    view.setFloat32(0, num, false); // byteOffset = 0; litteEndian = false
    return view.getInt32(0);
}

exports('VERTICAL_PROBE', (x, y, z, unkbool) => {
    const buffer = new ArrayBuffer(8);
    const view = new DataView(buffer);
    const r = Citizen.invokeNative("0x2B3451FA1E3142E2", x, y, z, unkbool, view);
    const out = new Float32Array(buffer);
    return [r, out[0]];
});