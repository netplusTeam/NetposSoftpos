.class public Lorg/jpos/tlv/CharTag;
.super Ljava/lang/Object;
.source "CharTag.java"


# instance fields
.field protected lengthSize:I

.field private swapTagWithLength:Z

.field private final tagId:Ljava/lang/String;

.field private final value:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "tagId"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x3

    iput v0, p0, Lorg/jpos/tlv/CharTag;->lengthSize:I

    .line 53
    iput-object p1, p0, Lorg/jpos/tlv/CharTag;->tagId:Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lorg/jpos/tlv/CharTag;->value:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method public getTLV()Ljava/lang/String;
    .locals 5

    .line 81
    const/4 v0, 0x0

    .line 82
    .local v0, "vLen":I
    iget-object v1, p0, Lorg/jpos/tlv/CharTag;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 83
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 85
    :cond_0
    int-to-long v1, v0

    iget v3, p0, Lorg/jpos/tlv/CharTag;->lengthSize:I

    invoke-static {v1, v2, v3}, Lorg/jpos/iso/ISOUtil;->zeropad(JI)Ljava/lang/String;

    move-result-object v1

    .line 87
    .local v1, "length":Ljava/lang/String;
    iget-boolean v2, p0, Lorg/jpos/tlv/CharTag;->swapTagWithLength:Z

    if-eqz v2, :cond_1

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jpos/tlv/CharTag;->tagId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .local v2, "tlv":Ljava/lang/String;
    goto :goto_0

    .line 90
    .end local v2    # "tlv":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lorg/jpos/tlv/CharTag;->tagId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 92
    .restart local v2    # "tlv":Ljava/lang/String;
    :goto_0
    if-nez v0, :cond_2

    .line 93
    return-object v2

    .line 95
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jpos/tlv/CharTag;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getTagId()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lorg/jpos/tlv/CharTag;->tagId:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .line 113
    iget-object v0, p0, Lorg/jpos/tlv/CharTag;->value:Ljava/lang/String;

    return-object v0
.end method

.method protected setLengthSize(I)V
    .locals 0
    .param p1, "size"    # I

    .line 63
    iput p1, p0, Lorg/jpos/tlv/CharTag;->lengthSize:I

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 118
    const/4 v0, 0x0

    .line 119
    .local v0, "vLen":I
    iget-object v1, p0, Lorg/jpos/tlv/CharTag;->value:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 120
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    .line 122
    :cond_0
    iget-object v1, p0, Lorg/jpos/tlv/CharTag;->tagId:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    iget v2, p0, Lorg/jpos/tlv/CharTag;->lengthSize:I

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x20

    .line 123
    .local v1, "sbSize":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 124
    const-string v3, "tag: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/jpos/tlv/CharTag;->tagId:Ljava/lang/String;

    .line 125
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 126
    const-string v3, ", len: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 127
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 128
    .local v2, "sb":Ljava/lang/StringBuilder;
    if-lez v0, :cond_1

    .line 129
    const-string v3, ", value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jpos/tlv/CharTag;->value:Ljava/lang/String;

    .line 130
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected withTagLengthSwap(Z)V
    .locals 0
    .param p1, "swap"    # Z

    .line 72
    iput-boolean p1, p0, Lorg/jpos/tlv/CharTag;->swapTagWithLength:Z

    .line 73
    return-void
.end method
