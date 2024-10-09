package com.woleapp.netpos.contactless.cr100;


@SuppressWarnings("ALL")
public class BluetoothToolsBean {

    private static String conectedState;
    private static String bluetoothName;

    public static String getBlueToothName() {
        return bluetoothName;
    }

    public static void setBulueToothName(String blueoothName) {
        BluetoothToolsBean.bluetoothName = blueoothName;
    }

    public static String getConectedState() {
        return conectedState;
    }

    public static void setConectedState(String conectedState) {
        BluetoothToolsBean.conectedState = conectedState;
    }

}
