.class public final Lcom/github/devnied/emvnfccard/utils/CPLCUtils;
.super Ljava/lang/Object;
.source "CPLCUtils.java"


# static fields
.field private static final CPLC_TAG:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 35
    const-class v0, Lcom/github/devnied/emvnfccard/utils/CPLCUtils;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/github/devnied/emvnfccard/utils/CPLCUtils;->LOGGER:Lorg/slf4j/Logger;

    .line 40
    new-instance v0, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;

    sget-object v1, Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;->BINARY:Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

    const-string v2, "9f7f"

    const-string v3, "Card Production Life Cycle Data"

    const-string v4, ""

    invoke-direct {v0, v2, v1, v3, v4}, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;-><init>(Ljava/lang/String;Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/github/devnied/emvnfccard/utils/CPLCUtils;->CPLC_TAG:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static parse([B)Lcom/github/devnied/emvnfccard/model/CPLC;
    .locals 6
    .param p0, "raw"    # [B

    .line 48
    const/4 v0, 0x0

    .line 49
    .local v0, "ret":Lcom/github/devnied/emvnfccard/model/CPLC;
    if-eqz p0, :cond_2

    .line 50
    const/4 v1, 0x0

    .line 52
    .local v1, "cplc":[B
    array-length v2, p0

    const/16 v3, 0x2c

    const/4 v4, 0x0

    if-ne v2, v3, :cond_0

    .line 53
    move-object v1, p0

    goto :goto_0

    .line 56
    :cond_0
    array-length v2, p0

    const/16 v3, 0x2f

    if-ne v2, v3, :cond_1

    .line 57
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    const/4 v3, 0x0

    sget-object v5, Lcom/github/devnied/emvnfccard/utils/CPLCUtils;->CPLC_TAG:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    aput-object v5, v2, v3

    invoke-static {p0, v2}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getValue([B[Lcom/github/devnied/emvnfccard/iso7816emv/ITag;)[B

    move-result-object v1

    .line 62
    :goto_0
    new-instance v2, Lcom/github/devnied/emvnfccard/model/CPLC;

    invoke-direct {v2}, Lcom/github/devnied/emvnfccard/model/CPLC;-><init>()V

    move-object v0, v2

    .line 63
    invoke-virtual {v0, v1, v4}, Lcom/github/devnied/emvnfccard/model/CPLC;->parse([BLjava/util/Collection;)V

    goto :goto_1

    .line 59
    :cond_1
    sget-object v2, Lcom/github/devnied/emvnfccard/utils/CPLCUtils;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "CPLC data not valid"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 60
    return-object v4

    .line 65
    .end local v1    # "cplc":[B
    :cond_2
    :goto_1
    return-object v0
.end method
