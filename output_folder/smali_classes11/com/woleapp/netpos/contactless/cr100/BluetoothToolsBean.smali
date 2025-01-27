.class public Lcom/woleapp/netpos/contactless/cr100/BluetoothToolsBean;
.super Ljava/lang/Object;
.source "BluetoothToolsBean.java"


# static fields
.field private static bluetoothName:Ljava/lang/String;

.field private static conectedState:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBlueToothName()Ljava/lang/String;
    .locals 1

    .line 11
    sget-object v0, Lcom/woleapp/netpos/contactless/cr100/BluetoothToolsBean;->bluetoothName:Ljava/lang/String;

    return-object v0
.end method

.method public static getConectedState()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/woleapp/netpos/contactless/cr100/BluetoothToolsBean;->conectedState:Ljava/lang/String;

    return-object v0
.end method

.method public static setBulueToothName(Ljava/lang/String;)V
    .locals 0
    .param p0, "blueoothName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "blueoothName"
        }
    .end annotation

    .line 15
    sput-object p0, Lcom/woleapp/netpos/contactless/cr100/BluetoothToolsBean;->bluetoothName:Ljava/lang/String;

    .line 16
    return-void
.end method

.method public static setConectedState(Ljava/lang/String;)V
    .locals 0
    .param p0, "conectedState"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "conectedState"
        }
    .end annotation

    .line 23
    sput-object p0, Lcom/woleapp/netpos/contactless/cr100/BluetoothToolsBean;->conectedState:Ljava/lang/String;

    .line 24
    return-void
.end method
