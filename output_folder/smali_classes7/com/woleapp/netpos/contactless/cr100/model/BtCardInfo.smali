.class public final Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;
.super Ljava/lang/Object;
.source "BtCardInfo.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\u0008J\t\u0010\u000f\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0010\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0011\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0012\u001a\u0004\u0018\u00010\u0007H\u00c6\u0003J3\u0010\u0013\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\n\u0008\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u00c6\u0001J\u0013\u0010\u0014\u001a\u00020\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0017\u001a\u00020\u0018H\u00d6\u0001J\t\u0010\u0019\u001a\u00020\u0003H\u00d6\u0001R\u0013\u0010\u0006\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u0011\u0010\u0005\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000cR\u0011\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000e\u0010\u000c\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;",
        "",
        "realPan",
        "",
        "track2",
        "decryptedIcc",
        "cardType",
        "Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;)V",
        "getCardType",
        "()Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;",
        "getDecryptedIcc",
        "()Ljava/lang/String;",
        "getRealPan",
        "getTrack2",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
        "other",
        "hashCode",
        "",
        "toString",
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
.field private final cardType:Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

.field private final decryptedIcc:Ljava/lang/String;

.field private final realPan:Ljava/lang/String;

.field private final track2:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;)V
    .locals 1
    .param p1, "realPan"    # Ljava/lang/String;
    .param p2, "track2"    # Ljava/lang/String;
    .param p3, "decryptedIcc"    # Ljava/lang/String;
    .param p4, "cardType"    # Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    const-string v0, "realPan"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "track2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "decryptedIcc"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->realPan:Ljava/lang/String;

    .line 7
    iput-object p2, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->track2:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->decryptedIcc:Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->cardType:Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    .line 5
    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    .line 5
    and-int/lit8 p6, p5, 0x1

    const-string v0, ""

    if-eqz p6, :cond_0

    .line 6
    move-object p1, v0

    .line 5
    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    .line 7
    move-object p2, v0

    .line 5
    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    .line 8
    move-object p3, v0

    .line 5
    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    .line 9
    const/4 p4, 0x0

    .line 5
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;)V

    .line 10
    return-void
.end method

.method public static synthetic copy$default(Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;ILjava/lang/Object;)Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->realPan:Ljava/lang/String;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->track2:Ljava/lang/String;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget-object p3, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->decryptedIcc:Ljava/lang/String;

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->cardType:Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;)Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->realPan:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->track2:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->decryptedIcc:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;
    .locals 1

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->cardType:Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    return-object v0
.end method

.method public final copy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;)Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;
    .locals 1

    const-string v0, "realPan"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "track2"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "decryptedIcc"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;

    iget-object v3, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->realPan:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->realPan:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    return v2

    :cond_2
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->track2:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->track2:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    return v2

    :cond_3
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->decryptedIcc:Ljava/lang/String;

    iget-object v4, v1, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->decryptedIcc:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    return v2

    :cond_4
    iget-object v3, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->cardType:Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    iget-object v1, v1, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->cardType:Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    if-eq v3, v1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getCardType()Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->cardType:Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    return-object v0
.end method

.method public final getDecryptedIcc()Ljava/lang/String;
    .locals 1

    .line 8
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->decryptedIcc:Ljava/lang/String;

    return-object v0
.end method

.method public final getRealPan()Ljava/lang/String;
    .locals 1

    .line 6
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->realPan:Ljava/lang/String;

    return-object v0
.end method

.method public final getTrack2()Ljava/lang/String;
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->track2:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->realPan:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->track2:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->decryptedIcc:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->cardType:Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;->hashCode()I

    move-result v2

    :goto_0
    add-int/2addr v1, v2

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BtCardInfo(realPan="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->realPan:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", track2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->track2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", decryptedIcc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->decryptedIcc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cardType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/woleapp/netpos/contactless/cr100/model/BtCardInfo;->cardType:Lcom/woleapp/netpos/contactless/taponphone/visa/NfcPaymentType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
