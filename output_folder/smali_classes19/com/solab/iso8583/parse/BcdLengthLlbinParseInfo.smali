.class public Lcom/solab/iso8583/parse/BcdLengthLlbinParseInfo;
.super Lcom/solab/iso8583/parse/LlbinParseInfo;
.source "BcdLengthLlbinParseInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    sget-object v0, Lcom/solab/iso8583/IsoType;->LLBCDBIN:Lcom/solab/iso8583/IsoType;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/solab/iso8583/parse/LlbinParseInfo;-><init>(Lcom/solab/iso8583/IsoType;I)V

    .line 12
    return-void
.end method


# virtual methods
.method protected getLengthForBinaryParsing(B)I
    .locals 2
    .param p1, "b"    # B

    .line 16
    invoke-super {p0, p1}, Lcom/solab/iso8583/parse/LlbinParseInfo;->getLengthForBinaryParsing(B)I

    move-result v0

    .line 17
    .local v0, "length":I
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_0

    div-int/lit8 v1, v0, 0x2

    goto :goto_0

    :cond_0
    div-int/lit8 v1, v0, 0x2

    add-int/lit8 v1, v1, 0x1

    :goto_0
    return v1
.end method
