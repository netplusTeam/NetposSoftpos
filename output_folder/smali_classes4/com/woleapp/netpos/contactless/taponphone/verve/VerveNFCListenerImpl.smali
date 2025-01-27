.class public final Lcom/woleapp/netpos/contactless/taponphone/verve/VerveNFCListenerImpl;
.super Ljava/lang/Object;
.source "VerveNFCListenerImpl.kt"

# interfaces
.implements Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/woleapp/netpos/contactless/taponphone/verve/VerveNFCListenerImpl$Companion;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0012\n\u0002\u0008\u0003\u0018\u0000 \u00152\u00020\u0001:\u0001\u0015B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0005\u001a\u00020\u0006H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0010\u0010\n\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0010\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u0010\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0013H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/taponphone/verve/VerveNFCListenerImpl;",
        "Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;",
        "()V",
        "lastTagRead",
        "Landroid/nfc/tech/IsoDep;",
        "activateNFC",
        "",
        "deactivateNFC",
        "getCardStatus",
        "Lcom/alcineo/softpos/payment/model/CardStatus;",
        "onNfcTagDiscovered",
        "tag",
        "Landroid/nfc/Tag;",
        "resetNFCField",
        "",
        "setTimeout",
        "timeout",
        "",
        "transceiveApdu",
        "",
        "capdu",
        "Companion",
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


# static fields
.field public static final Companion:Lcom/woleapp/netpos/contactless/taponphone/verve/VerveNFCListenerImpl$Companion;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private lastTagRead:Landroid/nfc/tech/IsoDep;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveNFCListenerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveNFCListenerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveNFCListenerImpl;->Companion:Lcom/woleapp/netpos/contactless/taponphone/verve/VerveNFCListenerImpl$Companion;

    .line 55
    const-class v0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveNFCListenerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveNFCListenerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public activateNFC()V
    .locals 0

    .line 11
    return-void
.end method

.method public deactivateNFC()V
    .locals 6

    .line 13
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveNFCListenerImpl;->lastTagRead:Landroid/nfc/tech/IsoDep;

    if-eqz v0, :cond_0

    .local v0, "it":Landroid/nfc/tech/IsoDep;
    const/4 v1, 0x0

    .line 14
    .local v1, "$i$a$-let-VerveNFCListenerImpl$deactivateNFC$1":I
    nop

    .line 15
    :try_start_0
    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->close()V

    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 16
    :catch_0
    move-exception v2

    .line 17
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveNFCListenerImpl;->TAG:Ljava/lang/String;

    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    const-string v5, "deactivateNFC: "

    invoke-static {v3, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    nop

    .line 13
    .end local v0    # "it":Landroid/nfc/tech/IsoDep;
    .end local v1    # "$i$a$-let-VerveNFCListenerImpl$deactivateNFC$1":I
    nop

    .line 20
    :cond_0
    return-void
.end method

.method public getCardStatus()Lcom/alcineo/softpos/payment/model/CardStatus;
    .locals 3

    .line 22
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveNFCListenerImpl;->lastTagRead:Landroid/nfc/tech/IsoDep;

    if-eqz v0, :cond_1

    .local v0, "it":Landroid/nfc/tech/IsoDep;
    const/4 v1, 0x0

    .line 23
    .local v1, "$i$a$-let-VerveNFCListenerImpl$getCardStatus$1":I
    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/alcineo/softpos/payment/model/CardStatus;->PRESENT_ON_FIELD:Lcom/alcineo/softpos/payment/model/CardStatus;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/alcineo/softpos/payment/model/CardStatus;->ABSENT_OFF_FIELD:Lcom/alcineo/softpos/payment/model/CardStatus;

    .line 22
    .end local v0    # "it":Landroid/nfc/tech/IsoDep;
    .end local v1    # "$i$a$-let-VerveNFCListenerImpl$getCardStatus$1":I
    :goto_0
    if-nez v2, :cond_2

    .line 24
    :cond_1
    sget-object v2, Lcom/alcineo/softpos/payment/model/CardStatus;->ABSENT_OFF_FIELD:Lcom/alcineo/softpos/payment/model/CardStatus;

    .line 22
    :cond_2
    return-object v2
.end method

.method public onNfcTagDiscovered(Landroid/nfc/Tag;)V
    .locals 6
    .param p1, "tag"    # Landroid/nfc/Tag;

    const-string v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "nb: "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    invoke-static {p1}, Landroid/nfc/tech/IsoDep;->get(Landroid/nfc/Tag;)Landroid/nfc/tech/IsoDep;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveNFCListenerImpl;->lastTagRead:Landroid/nfc/tech/IsoDep;

    .line 45
    if-eqz v0, :cond_0

    .local v0, "it":Landroid/nfc/tech/IsoDep;
    const/4 v1, 0x0

    .line 46
    .local v1, "$i$a$-let-VerveNFCListenerImpl$onNfcTagDiscovered$1":I
    nop

    .line 47
    :try_start_0
    invoke-virtual {v0}, Landroid/nfc/tech/IsoDep;->connect()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 48
    :catch_0
    move-exception v2

    .line 49
    .local v2, "e":Ljava/io/IOException;
    sget-object v3, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveNFCListenerImpl;->TAG:Ljava/lang/String;

    move-object v4, v2

    check-cast v4, Ljava/lang/Throwable;

    const-string v5, "onNfcTagRead: "

    invoke-static {v3, v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 51
    .end local v2    # "e":Ljava/io/IOException;
    :goto_0
    const/16 v2, 0xbb8

    invoke-virtual {v0, v2}, Landroid/nfc/tech/IsoDep;->setTimeout(I)V

    .line 52
    nop

    .line 45
    .end local v0    # "it":Landroid/nfc/tech/IsoDep;
    .end local v1    # "$i$a$-let-VerveNFCListenerImpl$onNfcTagDiscovered$1":I
    nop

    .line 53
    :cond_0
    return-void
.end method

.method public resetNFCField()Z
    .locals 1

    .line 35
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveNFCListenerImpl;->deactivateNFC()V

    .line 36
    invoke-virtual {p0}, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveNFCListenerImpl;->activateNFC()V

    .line 37
    const/4 v0, 0x1

    return v0
.end method

.method public setTimeout(I)V
    .locals 1
    .param p1, "timeout"    # I

    .line 40
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveNFCListenerImpl;->lastTagRead:Landroid/nfc/tech/IsoDep;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Landroid/nfc/tech/IsoDep;->setTimeout(I)V

    .line 41
    :goto_0
    return-void
.end method

.method public transceiveApdu([B)[B
    .locals 4
    .param p1, "capdu"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "capdu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/verve/VerveNFCListenerImpl;->lastTagRead:Landroid/nfc/tech/IsoDep;

    if-eqz v0, :cond_0

    .line 29
    .local v0, "isoDep":Landroid/nfc/tech/IsoDep;
    invoke-virtual {v0, p1}, Landroid/nfc/tech/IsoDep;->transceive([B)[B

    move-result-object v1

    .line 30
    .local v1, "rapdu":[B
    invoke-static {p1}, Lcom/alcineo/utils/common/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "C-APDU"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-static {v1}, Lcom/alcineo/utils/common/StringUtils;->convertBytesToHex([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "R-APDU"

    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    const-string v2, "rapdu"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1

    .line 28
    .end local v0    # "isoDep":Landroid/nfc/tech/IsoDep;
    .end local v1    # "rapdu":[B
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "lastTagRead is null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
