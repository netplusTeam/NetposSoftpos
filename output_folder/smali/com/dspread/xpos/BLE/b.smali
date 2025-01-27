.class public Lcom/dspread/xpos/BLE/b;
.super Ljava/lang/Object;
.source "SampleGattAttributes.java"


# static fields
.field private static a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/dspread/xpos/BLE/b;->a:Ljava/util/HashMap;

    .line 2
    const-string v1, "00002a37-0000-1000-8000-00805f9b34fb"

    sput-object v1, Lcom/dspread/xpos/BLE/b;->b:Ljava/lang/String;

    .line 3
    const-string v1, "00002902-0000-1000-8000-00805f9b34fb"

    sput-object v1, Lcom/dspread/xpos/BLE/b;->c:Ljava/lang/String;

    .line 7
    const-string v1, "0000180d-0000-1000-8000-00805f9b34fb"

    const-string v2, "Heart Rate Service"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object v0, Lcom/dspread/xpos/BLE/b;->a:Ljava/util/HashMap;

    const-string v1, "0000180a-0000-1000-8000-00805f9b34fb"

    const-string v2, "Device Information Service"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v0, Lcom/dspread/xpos/BLE/b;->a:Ljava/util/HashMap;

    sget-object v1, Lcom/dspread/xpos/BLE/b;->b:Ljava/lang/String;

    const-string v2, "Heart Rate Measurement"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    sget-object v0, Lcom/dspread/xpos/BLE/b;->a:Ljava/util/HashMap;

    const-string v1, "00002a29-0000-1000-8000-00805f9b34fb"

    const-string v2, "Manufacturer Name String"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/dspread/xpos/BLE/b;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p0

    :goto_0
    return-object p1
.end method
