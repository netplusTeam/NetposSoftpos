.class public Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;
.super Ljava/lang/Object;
.source "BluetoothIBridgeDevice.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;",
            ">;"
        }
    .end annotation
.end field

.field static final j:Ljava/util/UUID;

.field private static k:Z


# instance fields
.field private a:Landroid/bluetooth/BluetoothDevice;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

.field private f:I

.field private g:Z

.field h:[B

.field i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "0000ffe1-0000-1000-8000-00805f9b34fb"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->j:Ljava/util/UUID;

    .line 11
    const/4 v0, 0x1

    sput-boolean v0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->k:Z

    .line 14
    new-instance v0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$a;

    invoke-direct {v0}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$a;-><init>()V

    sput-object v0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 2

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->g:Z

    .line 60
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->b:Ljava/lang/String;

    .line 61
    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->a:Landroid/bluetooth/BluetoothDevice;

    .line 62
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->c:Ljava/lang/String;

    .line 63
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getType()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    iput-boolean v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->g:Z

    const/4 p1, 0x0

    .line 66
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    if-eqz p1, :cond_1

    .line 70
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p1

    .line 71
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p1

    iput p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->f:I

    goto :goto_1

    :cond_1
    const/4 p1, -0x1

    .line 73
    iput p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->f:I

    :goto_1
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->g:Z

    .line 130
    invoke-direct {p0, p1}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->a(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->g:Z

    .line 19
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 20
    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->b:Ljava/lang/String;

    .line 21
    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->a:Landroid/bluetooth/BluetoothDevice;

    .line 22
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->c:Ljava/lang/String;

    .line 23
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 25
    iget-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p1

    .line 26
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p1

    iput p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->f:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 28
    iput p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->f:I

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;
    .locals 1

    .line 1
    invoke-static {}, Lcom/dspread/xpos/bt2mode/dbridge4/c;->a()Lcom/dspread/xpos/bt2mode/dbridge4/c;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p0}, Lcom/dspread/xpos/bt2mode/dbridge4/c;->a(Ljava/lang/String;)Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/os/Parcel;)V
    .locals 3

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->c:Ljava/lang/String;

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->b:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->f:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->d:Z

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v2, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->g:Z

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    .line 13
    invoke-static {}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;->values()[Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

    move-result-object v0

    .line 14
    array-length v0, v0

    if-ge p1, v0, :cond_2

    .line 15
    invoke-static {}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;->values()[Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

    move-result-object v0

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->e:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

    goto :goto_1

    .line 17
    :cond_2
    sget-object p1, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;->DIRECTION_NONE:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->e:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

    .line 19
    :goto_1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->a:Landroid/bluetooth/BluetoothDevice;

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "readFromParcel:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/dspread/xpos/bt2mode/dbridge4/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method private e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->f:I

    return v0
.end method


# virtual methods
.method a()Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->e:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

    return-object v0
.end method

.method a(Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;)V
    .locals 0

    .line 5
    iput-object p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->e:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

    return-void
.end method

.method a(Z)V
    .locals 0

    .line 4
    iput-boolean p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->g:Z

    return-void
.end method

.method a(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->b:Ljava/lang/String;

    const-string v1, "00:00:00:00:00:00"

    if-nez v0, :cond_0

    move-object v0, v1

    .line 25
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 26
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 28
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b()V
    .locals 3

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->a:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "createBond"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->a:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 3
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    return-void
.end method

.method b(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->d:Z

    return-void
.end method

.method c()Landroid/bluetooth/BluetoothSocket;
    .locals 7

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0xa

    if-lt v0, v2, :cond_0

    .line 2
    const-class v0, Landroid/bluetooth/BluetoothDevice;

    .line 5
    const/4 v2, 0x0

    const/4 v3, 0x1

    :try_start_0
    const-string v4, "createInsecureRfcommSocketToServiceRecord"

    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/util/UUID;

    aput-object v6, v5, v2

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 12
    :try_start_1
    iget-object v4, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->a:Landroid/bluetooth/BluetoothDevice;

    new-array v3, v3, [Ljava/lang/Object;

    sget-object v5, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->j:Ljava/util/UUID;

    aput-object v5, v3, v2

    invoke-virtual {v0, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothSocket;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v1, v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1

    :catch_3
    move-exception v0

    goto :goto_1

    .line 23
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->a:Landroid/bluetooth/BluetoothDevice;

    sget-object v2, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->j:Ljava/util/UUID;

    .line 24
    invoke-virtual {v0, v2}, Landroid/bluetooth/BluetoothDevice;->createRfcommSocketToServiceRecord(Ljava/util/UUID;)Landroid/bluetooth/BluetoothSocket;

    move-result-object v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_1

    :catch_4
    move-exception v0

    :cond_1
    :goto_1
    return-object v1
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->b:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    if-nez v1, :cond_1

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->b:Ljava/lang/String;

    const-string v1, "00:00:00:00:00:00"

    if-nez v0, :cond_2

    move-object v0, v1

    .line 8
    :cond_2
    check-cast p1, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;

    .line 9
    iget-object p1, p1, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->b:Ljava/lang/String;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, p1

    .line 12
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->a:Landroid/bluetooth/BluetoothDevice;

    .line 3
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->c:Ljava/lang/String;

    return-object v0
.end method

.method g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->a:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v2, 0xc

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->d:Z

    return v0
.end method

.method public i()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->g:Z

    return v0
.end method

.method j()Z
    .locals 3

    .line 1
    sget-boolean v0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->k:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "00:15:83:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->d()Ljava/lang/String;

    move-result-object v0

    const-string v2, "00:13:8A:"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    nop

    :goto_1
    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->c:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "Device"

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    const-string v1, "00:00:00:00:00:00"

    .line 5
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->c:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->b:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->f:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-boolean p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->d:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget-boolean p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->g:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object p2, p0, Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice;->e:Lcom/dspread/xpos/bt2mode/dbridge4/BluetoothIBridgeDevice$Direction;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
