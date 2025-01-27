.class public Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;
.super Ljava/lang/Object;
.source "TagEventListener.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "TagEventListener"


# instance fields
.field private mIsoDep:Landroid/nfc/tech/IsoDep;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIsoDep()Landroid/nfc/tech/IsoDep;
    .locals 1

    .line 16
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;->mIsoDep:Landroid/nfc/tech/IsoDep;

    return-object v0
.end method

.method public invalidateTag()V
    .locals 3

    .line 24
    const-string v0, "TagEventListener"

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;->mIsoDep:Landroid/nfc/tech/IsoDep;

    if-eqz v1, :cond_0

    .line 26
    :try_start_0
    invoke-virtual {v1}, Landroid/nfc/tech/IsoDep;->close()V

    .line 27
    const-string v1, "IsoDep disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 28
    :catch_0
    move-exception v1

    .line 29
    .local v1, "e":Ljava/io/IOException;
    const-string v2, "Error while closing IsoDep"

    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;->mIsoDep:Landroid/nfc/tech/IsoDep;

    .line 33
    return-void
.end method

.method setIsoDep(Landroid/nfc/tech/IsoDep;)V
    .locals 0
    .param p1, "isoDep"    # Landroid/nfc/tech/IsoDep;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "isoDep"
        }
    .end annotation

    .line 20
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/nfc/TagEventListener;->mIsoDep:Landroid/nfc/tech/IsoDep;

    .line 21
    return-void
.end method
