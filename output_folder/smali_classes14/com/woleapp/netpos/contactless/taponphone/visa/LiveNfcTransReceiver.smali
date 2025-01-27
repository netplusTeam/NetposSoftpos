.class public final Lcom/woleapp/netpos/contactless/taponphone/visa/LiveNfcTransReceiver;
.super Ljava/lang/Object;
.source "LiveNfcTransReceiver.kt"

# interfaces
.implements Lcom/visa/app/ttpkernel/NfcTransceiver;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\'\u0012\n\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004\u0012\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\n\u0008\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0008\u00a2\u0006\u0002\u0010\tJ\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\rH\u0016J\u0012\u0010\u000e\u001a\u00020\u00082\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0008H\u0016R\u0012\u0010\u0002\u001a\u00060\u0003j\u0002`\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/taponphone/visa/LiveNfcTransReceiver;",
        "Lcom/visa/app/ttpkernel/NfcTransceiver;",
        "log",
        "Ljava/lang/StringBuilder;",
        "Lkotlin/text/StringBuilder;",
        "mTagCom",
        "Landroid/nfc/tech/IsoDep;",
        "rawResponse",
        "",
        "(Ljava/lang/StringBuilder;Landroid/nfc/tech/IsoDep;[B)V",
        "destroy",
        "",
        "isCardPresent",
        "",
        "transceive",
        "pCommand",
        "app_fcmbeasypayDebug"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final log:Ljava/lang/StringBuilder;

.field private final mTagCom:Landroid/nfc/tech/IsoDep;

.field private rawResponse:[B


# direct methods
.method public constructor <init>(Ljava/lang/StringBuilder;Landroid/nfc/tech/IsoDep;[B)V
    .locals 1
    .param p1, "log"    # Ljava/lang/StringBuilder;
    .param p2, "mTagCom"    # Landroid/nfc/tech/IsoDep;
    .param p3, "rawResponse"    # [B

    const-string v0, "log"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/LiveNfcTransReceiver;->log:Ljava/lang/StringBuilder;

    .line 10
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/LiveNfcTransReceiver;->mTagCom:Landroid/nfc/tech/IsoDep;

    .line 11
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/LiveNfcTransReceiver;->rawResponse:[B

    .line 8
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/StringBuilder;Landroid/nfc/tech/IsoDep;[BILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 8
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    .line 11
    const/4 p3, 0x0

    .line 8
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/woleapp/netpos/contactless/taponphone/visa/LiveNfcTransReceiver;-><init>(Ljava/lang/StringBuilder;Landroid/nfc/tech/IsoDep;[B)V

    .line 39
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .line 34
    return-void
.end method

.method public isCardPresent()Z
    .locals 1

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public transceive([B)[B
    .locals 6
    .param p1, "pCommand"    # [B

    .line 14
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/LiveNfcTransReceiver;->log:Ljava/lang/StringBuilder;

    const-string v1, "=================<br/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/LiveNfcTransReceiver;->log:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "<font color=\'green\'><b>send:</b> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/woleapp/netpos/contactless/util/BytesUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/LiveNfcTransReceiver;->log:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/woleapp/netpos/contactless/util/BytesUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 17
    const-string v1, "</font><br/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    const/4 v0, 0x0

    .line 19
    .local v0, "response":[B
    nop

    .line 21
    :try_start_0
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/LiveNfcTransReceiver;->mTagCom:Landroid/nfc/tech/IsoDep;

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v2, p1}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object v2
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    move-object v0, v2

    .line 25
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/LiveNfcTransReceiver;->rawResponse:[B

    .line 26
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/LiveNfcTransReceiver;->log:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<font color=\'blue\'><b>resp:</b> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/util/BytesUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    iget-object v2, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/LiveNfcTransReceiver;->log:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/woleapp/netpos/contactless/util/BytesUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 22
    :catch_0
    move-exception v1

    .line 23
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
