.class public Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;
.super Ljava/lang/Object;
.source "TlvData.java"


# static fields
.field static final ASCII:B = 0x1t

.field static final CONSTRUCTED:B = 0x1t

.field static final HEX:B

.field static final PRIMITIVE:B


# instance fields
.field length:S

.field moreTLVs:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;",
            ">;"
        }
    .end annotation
.end field

.field tag:S

.field tagtype:B

.field value:[B


# direct methods
.method public constructor <init>([BSS)V
    .locals 6
    .param p1, "data"    # [B
    .param p2, "offset"    # S
    .param p3, "len"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "data",
            "offset",
            "len"
        }
    .end annotation

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->value:[B

    .line 43
    const/4 v1, 0x0

    iput-byte v1, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->tagtype:B

    .line 44
    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->moreTLVs:Ljava/util/Vector;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [S

    .line 55
    .local v0, "TL":[S
    invoke-static {p1, p2, v0}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Utils;->parseDOL([BS[S)S

    move-result v2

    .line 57
    .local v2, "span":S
    aget-short v1, v0, v1

    iput-short v1, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->tag:S

    .line 58
    const/4 v3, 0x1

    aget-short v4, v0, v3

    iput-short v4, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->length:S

    .line 59
    shr-int/lit8 v1, v1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-short v1, v1

    .line 61
    .local v1, "checktag":S
    if-nez v1, :cond_0

    .line 62
    iget-short v1, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->tag:S

    .line 64
    :cond_0
    and-int/lit8 v4, v1, 0x20

    if-lez v4, :cond_1

    .line 66
    iput-byte v3, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->tagtype:B

    .line 67
    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    iput-object v4, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->moreTLVs:Ljava/util/Vector;

    .line 69
    add-int v4, p2, v2

    int-to-short p2, v4

    .line 70
    :goto_0
    if-ge p2, p3, :cond_2

    .line 72
    invoke-static {p1, p2, v0}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/Utils;->parseDOL([BS[S)S

    move-result v2

    .line 73
    new-instance v4, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;

    aget-short v5, v0, v3

    add-int/2addr v5, p2

    int-to-short v5, v5

    invoke-direct {v4, p1, p2, v5}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;-><init>([BSS)V

    .line 74
    .local v4, "tlv":Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;
    iget-object v5, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->moreTLVs:Ljava/util/Vector;

    invoke-virtual {v5, v4}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 75
    aget-short v5, v0, v3

    add-int/2addr v5, p2

    int-to-short p2, v5

    .line 76
    add-int v5, p2, v2

    int-to-short p2, v5

    .line 77
    .end local v4    # "tlv":Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;
    goto :goto_0

    .line 81
    :cond_1
    add-int v4, p2, v2

    int-to-short p2, v4

    .line 82
    aget-short v3, v0, v3

    add-int/2addr v3, p2

    invoke-static {p1, p2, v3}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v3

    iput-object v3, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->value:[B

    .line 84
    :cond_2
    return-void
.end method


# virtual methods
.method public getValue()[B
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->value:[B

    if-eqz v0, :cond_0

    .line 93
    return-object v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public searchTag(S)Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;
    .locals 3
    .param p1, "fndtag"    # S
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fndtag"
        }
    .end annotation

    .line 105
    iget-short v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->tag:S

    if-ne v0, p1, :cond_0

    .line 106
    return-object p0

    .line 108
    :cond_0
    iget-byte v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->tagtype:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 110
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->moreTLVs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;

    .line 112
    .local v1, "tlv":Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;
    invoke-virtual {v1, p1}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->searchTag(S)Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 113
    return-object v1

    .line 114
    .end local v1    # "tlv":Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;
    :cond_1
    goto :goto_0

    .line 116
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public searchTag(SI)Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;
    .locals 3
    .param p1, "fndTag"    # S
    .param p2, "searchDepth"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fndTag",
            "searchDepth"
        }
    .end annotation

    .line 120
    iget-short v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->tag:S

    if-ne v0, p1, :cond_0

    .line 121
    return-object p0

    .line 124
    :cond_0
    iget-byte v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->tagtype:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    if-lez p2, :cond_2

    .line 125
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->moreTLVs:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;

    .line 126
    .local v1, "tlv":Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;
    add-int/lit8 v2, p2, -0x1

    invoke-virtual {v1, p1, v2}, Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;->searchTag(SI)Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 127
    return-object v1

    .line 129
    .end local v1    # "tlv":Lcom/woleapp/netpos/contactless/taponphone/visa/PPSEv21/TlvData;
    :cond_1
    goto :goto_0

    .line 132
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
