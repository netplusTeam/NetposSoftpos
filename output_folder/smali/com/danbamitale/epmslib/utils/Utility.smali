.class public final Lcom/danbamitale/epmslib/utils/Utility;
.super Ljava/lang/Object;
.source "Utility.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0012\n\u0002\u0008\u0005\n\u0002\u0010\t\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\t\u0010\r\u001a\u00020\u0004H\u0082 J\t\u0010\u000e\u001a\u00020\u0004H\u0082 J\u000e\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0011J\u000e\u0010\u0012\u001a\u00020\u00112\u0006\u0010\u0013\u001a\u00020\u0004J\u0010\u0010\u0014\u001a\u00020\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0004J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u0004J\u000e\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u001a\u001a\u00020\u0011R\u0011\u0010\u0003\u001a\u00020\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u0011\u0010\u0007\u001a\u00020\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/danbamitale/epmslib/utils/Utility;",
        "",
        "()V",
        "POS_VAS_NIBSS_DEFAULT_IP",
        "",
        "getPOS_VAS_NIBSS_DEFAULT_IP",
        "()Ljava/lang/String;",
        "POS_VAS_NIBSS_DEFAULT_PORT",
        "",
        "getPOS_VAS_NIBSS_DEFAULT_PORT",
        "()I",
        "ec",
        "Lcom/danbamitale/epmslib/domain/DataEc;",
        "getDefaultIp",
        "getDefaultPort",
        "hex",
        "data",
        "",
        "hexStringToByteArray",
        "s",
        "hexToByteArray",
        "parseLongIntoNairaKoboString",
        "tempAmount",
        "",
        "currencySymbol",
        "toHexString",
        "b",
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


# static fields
.field public static final INSTANCE:Lcom/danbamitale/epmslib/utils/Utility;

.field private static final POS_VAS_NIBSS_DEFAULT_IP:Ljava/lang/String;

.field private static final POS_VAS_NIBSS_DEFAULT_PORT:I

.field private static final ec:Lcom/danbamitale/epmslib/domain/DataEc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/danbamitale/epmslib/utils/Utility;

    invoke-direct {v0}, Lcom/danbamitale/epmslib/utils/Utility;-><init>()V

    sput-object v0, Lcom/danbamitale/epmslib/utils/Utility;->INSTANCE:Lcom/danbamitale/epmslib/utils/Utility;

    .line 10
    nop

    .line 11
    const-string v1, "module-params"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 12
    nop

    .line 14
    sget-object v1, Lcom/danbamitale/epmslib/di/AppModule;->INSTANCE:Lcom/danbamitale/epmslib/di/AppModule;

    invoke-virtual {v1}, Lcom/danbamitale/epmslib/di/AppModule;->providesDataEc()Lcom/danbamitale/epmslib/domain/DataEc;

    move-result-object v1

    sput-object v1, Lcom/danbamitale/epmslib/utils/Utility;->ec:Lcom/danbamitale/epmslib/domain/DataEc;

    .line 19
    invoke-direct {v0}, Lcom/danbamitale/epmslib/utils/Utility;->getDefaultIp()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/danbamitale/epmslib/domain/DataEc;->decryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/danbamitale/epmslib/utils/Utility;->POS_VAS_NIBSS_DEFAULT_IP:Ljava/lang/String;

    .line 20
    invoke-direct {v0}, Lcom/danbamitale/epmslib/utils/Utility;->getDefaultPort()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/danbamitale/epmslib/domain/DataEc;->decryptData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/danbamitale/epmslib/utils/Utility;->POS_VAS_NIBSS_DEFAULT_PORT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final native getDefaultIp()Ljava/lang/String;
.end method

.method private final native getDefaultPort()Ljava/lang/String;
.end method

.method public static synthetic parseLongIntoNairaKoboString$default(Lcom/danbamitale/epmslib/utils/Utility;JLjava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    .line 66
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const-string/jumbo p3, "\u20a6"

    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/danbamitale/epmslib/utils/Utility;->parseLongIntoNairaKoboString(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getPOS_VAS_NIBSS_DEFAULT_IP()Ljava/lang/String;
    .locals 1

    .line 19
    sget-object v0, Lcom/danbamitale/epmslib/utils/Utility;->POS_VAS_NIBSS_DEFAULT_IP:Ljava/lang/String;

    return-object v0
.end method

.method public final getPOS_VAS_NIBSS_DEFAULT_PORT()I
    .locals 1

    .line 20
    sget v0, Lcom/danbamitale/epmslib/utils/Utility;->POS_VAS_NIBSS_DEFAULT_PORT:I

    return v0
.end method

.method public final hex([B)Ljava/lang/String;
    .locals 6
    .param p1, "data"    # [B

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .local v0, "sb":Ljava/lang/StringBuilder;
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p1, v2

    .line 25
    .local v3, "b":B
    and-int/lit16 v4, v3, 0xf0

    shr-int/lit8 v4, v4, 0x4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 26
    and-int/lit8 v4, v3, 0xf

    invoke-static {v4, v5}, Ljava/lang/Character;->forDigit(II)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "sb.toString()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v1
.end method

.method public final hexStringToByteArray(Ljava/lang/String;)[B
    .locals 7
    .param p1, "s"    # Ljava/lang/String;

    const-string/jumbo v0, "s"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 56
    .local v0, "len":I
    div-int/lit8 v1, v0, 0x2

    new-array v1, v1, [B

    .line 57
    .local v1, "data":[B
    const/4 v2, 0x0

    .line 58
    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 59
    div-int/lit8 v3, v2, 0x2

    .line 60
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    add-int/lit8 v6, v2, 0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6, v5}, Ljava/lang/Character;->digit(CI)I

    move-result v5

    add-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v1, v3

    add-int/lit8 v2, v2, 0x2

    .line 61
    goto :goto_0

    .line 63
    :cond_0
    return-object v1
.end method

.method public final hexToByteArray(Ljava/lang/String;)[B
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .line 40
    move-object v0, p1

    .line 41
    .local v0, "s":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 42
    const-string v0, ""

    .line 44
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 45
    .local v1, "bout":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 46
    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 47
    add-int/lit8 v3, v2, 0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "this as java.lang.String\u2026ing(startIndex, endIndex)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    .local v3, "data":Ljava/lang/String;
    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 v2, v2, 0x2

    .line 49
    nop

    .end local v3    # "data":Ljava/lang/String;
    goto :goto_0

    .line 51
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const-string v4, "bout.toByteArray()"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3
.end method

.method public final parseLongIntoNairaKoboString(JLjava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "tempAmount"    # J
    .param p3, "currencySymbol"    # Ljava/lang/String;

    const-string v0, "currencySymbol"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    long-to-double v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    .line 69
    .local v0, "amountNairaPart":D
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {v2}, Ljava/text/NumberFormat;->getInstance(Ljava/util/Locale;)Ljava/text/NumberFormat;

    move-result-object v2

    .line 70
    .local v2, "numFormatter":Ljava/text/NumberFormat;
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/text/NumberFormat;->setMinimumFractionDigits(I)V

    .line 72
    invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v3

    .line 74
    .local v3, "amountInN":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    const-string v4, "amountInN"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v3
.end method

.method public final toHexString([B)Ljava/lang/String;
    .locals 6
    .param p1, "b"    # [B

    const-string v0, "b"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    const-string v0, ""

    .line 33
    .local v0, "result":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    array-length v2, p1

    :goto_0
    if-ge v1, v2, :cond_0

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget-byte v4, p1, v1

    and-int/lit16 v4, v4, 0xff

    add-int/lit16 v4, v4, 0x100

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "toString((b[i].toInt() and 0xFF) + 0x100, 16)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "this as java.lang.String).substring(startIndex)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 33
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 36
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method
