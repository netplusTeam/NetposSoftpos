.class public Lcom/dspread/xpos/bluetoothUtil/TransmitBean;
.super Ljava/lang/Object;
.source "TransmitBean.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private msg:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/dspread/xpos/bluetoothUtil/TransmitBean;->msg:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMsg()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/dspread/xpos/bluetoothUtil/TransmitBean;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public setMsg(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/dspread/xpos/bluetoothUtil/TransmitBean;->msg:Ljava/lang/String;

    return-void
.end method
