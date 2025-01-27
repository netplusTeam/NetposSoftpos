.class public final Lcom/danbamitale/epmslib/entities/CardData$Companion;
.super Ljava/lang/Object;
.source "CardData.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/danbamitale/epmslib/entities/CardData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\u0008\u0007\n\u0002\u0010\u000c\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u0005J\u0018\u0010\u000b\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u000e\u001a\u00020\u00052\u0006\u0010\u000f\u001a\u00020\u0005J\u0018\u0010\u0010\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rJ\u0018\u0010\u0011\u001a\u00020\u00052\u0006\u0010\n\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u000c\u001a\u00020\rJ\u000e\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u0005R\u0019\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\n\n\u0002\u0010\u0008\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/danbamitale/epmslib/entities/CardData$Companion;",
        "",
        "()V",
        "NIBSS_TAGS",
        "",
        "",
        "getNIBSS_TAGS",
        "()[Ljava/lang/String;",
        "[Ljava/lang/String;",
        "getAcquiringInstitutionIdCode",
        "track2Data",
        "getExpiryDate",
        "separatingChar",
        "",
        "getNibssTags",
        "iccData",
        "getPan",
        "getServiceCode",
        "initCardDataFromTrack",
        "Lcom/danbamitale/epmslib/entities/CardData;",
        "fullIcc",
        "epmslib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0}, Lcom/danbamitale/epmslib/entities/CardData$Companion;-><init>()V

    return-void
.end method

.method public static synthetic getExpiryDate$default(Lcom/danbamitale/epmslib/entities/CardData$Companion;Ljava/lang/String;CILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 80
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x44

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/danbamitale/epmslib/entities/CardData$Companion;->getExpiryDate(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getPan$default(Lcom/danbamitale/epmslib/entities/CardData$Companion;Ljava/lang/String;CILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 74
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x44

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/danbamitale/epmslib/entities/CardData$Companion;->getPan(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getServiceCode$default(Lcom/danbamitale/epmslib/entities/CardData$Companion;Ljava/lang/String;CILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 87
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/16 p2, 0x44

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/danbamitale/epmslib/entities/CardData$Companion;->getServiceCode(Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getAcquiringInstitutionIdCode(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "track2Data"    # Ljava/lang/String;

    const-string/jumbo v0, "track2Data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x0

    const/4 v1, 0x6

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getExpiryDate(Ljava/lang/String;C)Ljava/lang/String;
    .locals 5
    .param p1, "track2Data"    # Ljava/lang/String;
    .param p2, "separatingChar"    # C

    const-string/jumbo v0, "track2Data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p2, v1, v2}, Lkotlin/text/StringsKt;->indexOf(Ljava/lang/CharSequence;CIZ)I

    move-result v0

    .line 82
    .local v0, "indexOfToken":I
    add-int/lit8 v1, v0, 0x1

    .line 83
    .local v1, "indexOfExpiryDate":I
    const/4 v2, 0x4

    .line 84
    .local v2, "lengthOfExpiryDate":I
    add-int v3, v1, v2

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3
.end method

.method public final getNIBSS_TAGS()[Ljava/lang/String;
    .locals 1

    .line 21
    invoke-static {}, Lcom/danbamitale/epmslib/entities/CardData;->access$getNIBSS_TAGS$cp()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNibssTags(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "iccData"    # Ljava/lang/String;

    const-string v0, "iccData"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-static {p1}, Lcom/danbamitale/epmslib/tlv/TLVList;->fromBinary(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLVList;

    move-result-object v0

    .line 47
    .local v0, "tlvList":Lcom/danbamitale/epmslib/tlv/TLVList;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .local v1, "nibssIcc":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/danbamitale/epmslib/entities/CardData$Companion;->getNIBSS_TAGS()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 49
    .local v5, "tag":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/danbamitale/epmslib/tlv/TLVList;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 50
    invoke-virtual {v0, v5}, Lcom/danbamitale/epmslib/tlv/TLVList;->getTLV(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLV;

    move-result-object v6

    invoke-virtual {v6}, Lcom/danbamitale/epmslib/tlv/TLV;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .end local v5    # "tag":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "nibssIcc.toString()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v2
.end method

.method public final getPan(Ljava/lang/String;C)Ljava/lang/String;
    .locals 3
    .param p1, "track2Data"    # Ljava/lang/String;
    .param p2, "separatingChar"    # C

    const-string/jumbo v0, "track2Data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, p2, v1, v2}, Lkotlin/text/StringsKt;->indexOf(Ljava/lang/CharSequence;CIZ)I

    move-result v0

    .line 77
    .local v0, "indexOfToken":I
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public final getServiceCode(Ljava/lang/String;C)Ljava/lang/String;
    .locals 5
    .param p1, "track2Data"    # Ljava/lang/String;
    .param p2, "separatingChar"    # C

    const-string/jumbo v0, "track2Data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 88
    move-object v0, p1

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {p2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lkotlin/text/StringsKt;->indexOf(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v0

    .line 89
    .local v0, "indexOfToken":I
    add-int/lit8 v1, v0, 0x5

    .line 90
    .local v1, "indexOfServiceCode":I
    const/4 v2, 0x3

    .line 91
    .local v2, "lengthOfServiceCode":I
    nop

    .line 93
    add-int v3, v1, v2

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 91
    return-object v3
.end method

.method public final initCardDataFromTrack(Ljava/lang/String;)Lcom/danbamitale/epmslib/entities/CardData;
    .locals 8
    .param p1, "fullIcc"    # Ljava/lang/String;

    const-string v0, "fullIcc"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    invoke-static {p1}, Lcom/danbamitale/epmslib/tlv/TLVList;->fromBinary(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLVList;

    move-result-object v0

    .line 59
    .local v0, "tlvList":Lcom/danbamitale/epmslib/tlv/TLVList;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .local v1, "nibssIcc":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/danbamitale/epmslib/entities/CardData$Companion;->getNIBSS_TAGS()[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 61
    .local v5, "tag":Ljava/lang/String;
    invoke-virtual {v0, v5}, Lcom/danbamitale/epmslib/tlv/TLVList;->contains(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 62
    invoke-virtual {v0, v5}, Lcom/danbamitale/epmslib/tlv/TLVList;->getTLV(Ljava/lang/String;)Lcom/danbamitale/epmslib/tlv/TLV;

    move-result-object v6

    invoke-virtual {v6}, Lcom/danbamitale/epmslib/tlv/TLV;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .end local v5    # "tag":Ljava/lang/String;
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 67
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 68
    const-string v3, "57"

    invoke-virtual {v0, v3}, Lcom/danbamitale/epmslib/tlv/TLVList;->getTLVVL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 69
    const-string v4, "5F34"

    invoke-virtual {v0, v4}, Lcom/danbamitale/epmslib/tlv/TLVList;->getTLVVL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "tlvList.getTLVVL(\"5F34\")"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x3

    const/16 v6, 0x30

    invoke-static {v4, v5, v6}, Lcom/danbamitale/epmslib/extensions/StringExtensionsKt;->padLeft(Ljava/lang/String;IC)Ljava/lang/String;

    move-result-object v4

    .line 70
    const-string v5, "9F39"

    invoke-virtual {v0, v5}, Lcom/danbamitale/epmslib/tlv/TLVList;->getTLVVL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 66
    new-instance v6, Lcom/danbamitale/epmslib/entities/CardData;

    .line 68
    const-string v7, "getTLVVL(\"57\")"

    invoke-static {v3, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    const-string/jumbo v7, "toString()"

    invoke-static {v2, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    nop

    .line 70
    const-string v7, "getTLVVL(\"9F39\")"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-direct {v6, v3, v2, v4, v5}, Lcom/danbamitale/epmslib/entities/CardData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v6
.end method
