.class Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$a;
.super Ljava/lang/Object;
.source "BluetoothIBridgeDevice.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;
    .locals 2

    .line 1
    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;-><init>(Landroid/os/Parcel;Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$a;)V

    return-object v0
.end method

.method public a(I)[Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;
    .locals 0

    .line 2
    new-array p1, p1, [Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$a;->a(Landroid/os/Parcel;)Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$a;->a(I)[Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    move-result-object p1

    return-object p1
.end method
