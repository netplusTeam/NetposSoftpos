.class public Lcom/dspread/xpos/BLE/a$b;
.super Landroid/os/Binder;
.source "BluetoothLeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/BLE/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field final synthetic i:Lcom/dspread/xpos/BLE/a;


# direct methods
.method public constructor <init>(Lcom/dspread/xpos/BLE/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/BLE/a$b;->i:Lcom/dspread/xpos/BLE/a;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/dspread/xpos/BLE/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/BLE/a$b;->i:Lcom/dspread/xpos/BLE/a;

    return-object v0
.end method
