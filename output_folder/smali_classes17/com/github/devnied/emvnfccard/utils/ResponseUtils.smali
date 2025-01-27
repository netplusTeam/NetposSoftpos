.class public final Lcom/github/devnied/emvnfccard/utils/ResponseUtils;
.super Ljava/lang/Object;
.source "ResponseUtils.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const-class v0, Lcom/github/devnied/emvnfccard/utils/ResponseUtils;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/github/devnied/emvnfccard/utils/ResponseUtils;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    return-void
.end method

.method public static varargs contains([B[Lcom/github/devnied/emvnfccard/enums/SwEnum;)Z
    .locals 6
    .param p0, "pByte"    # [B
    .param p1, "pEnum"    # [Lcom/github/devnied/emvnfccard/enums/SwEnum;

    .line 76
    invoke-static {p0}, Lcom/github/devnied/emvnfccard/enums/SwEnum;->getSW([B)Lcom/github/devnied/emvnfccard/enums/SwEnum;

    move-result-object v0

    .line 77
    .local v0, "val":Lcom/github/devnied/emvnfccard/enums/SwEnum;
    sget-object v1, Lcom/github/devnied/emvnfccard/utils/ResponseUtils;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz p0, :cond_1

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response Status <"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v4, p0

    add-int/lit8 v4, v4, -0x2

    .line 79
    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v4

    array-length v5, p0

    invoke-static {p0, v4, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v4}, Lfr/devnied/bitlib/BytesUtils;->bytesToStringNoSpace([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "> : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 80
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/github/devnied/emvnfccard/enums/SwEnum;->getDetail()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_0
    const-string v4, "Unknow"

    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 78
    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 82
    :cond_1
    if-eqz v0, :cond_2

    invoke-static {p1, v0}, Lorg/apache/commons/lang3/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method public static isEquals([BLcom/github/devnied/emvnfccard/enums/SwEnum;)Z
    .locals 2
    .param p0, "pByte"    # [B
    .param p1, "pEnum"    # Lcom/github/devnied/emvnfccard/enums/SwEnum;

    .line 62
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/github/devnied/emvnfccard/enums/SwEnum;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {p0, v0}, Lcom/github/devnied/emvnfccard/utils/ResponseUtils;->contains([B[Lcom/github/devnied/emvnfccard/enums/SwEnum;)Z

    move-result v0

    return v0
.end method

.method public static isSucceed([B)Z
    .locals 3
    .param p0, "pByte"    # [B

    .line 49
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/github/devnied/emvnfccard/enums/SwEnum;

    sget-object v1, Lcom/github/devnied/emvnfccard/enums/SwEnum;->SW_9000:Lcom/github/devnied/emvnfccard/enums/SwEnum;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p0, v0}, Lcom/github/devnied/emvnfccard/utils/ResponseUtils;->contains([B[Lcom/github/devnied/emvnfccard/enums/SwEnum;)Z

    move-result v0

    return v0
.end method
