.class public final Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;
.super Ljava/lang/Object;
.source "TagImpl.java"

# interfaces
.implements Lcom/github/devnied/emvnfccard/iso7816emv/ITag;


# instance fields
.field private final description:Ljava/lang/String;

.field private final idBytes:[B

.field public final name:Ljava/lang/String;

.field private final tagClass:Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

.field private final tagValueType:Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

.field private final type:Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/String;
    .param p2, "tagValueType"    # Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lfr/devnied/bitlib/BytesUtils;->fromString(Ljava/lang/String;)[B

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;-><init>([BLcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-void
.end method

.method public constructor <init>([BLcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "idBytes"    # [B
    .param p2, "tagValueType"    # Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    if-eqz p1, :cond_3

    .line 48
    array-length v0, p1

    if-eqz v0, :cond_2

    .line 51
    if-eqz p2, :cond_1

    .line 54
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;->idBytes:[B

    .line 55
    iput-object p3, p0, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;->name:Ljava/lang/String;

    .line 56
    iput-object p4, p0, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;->description:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;->tagValueType:Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

    .line 59
    const/4 v0, 0x0

    aget-byte v1, p1, v0

    const/4 v2, 0x5

    invoke-static {v1, v2}, Lfr/devnied/bitlib/BytesUtils;->matchBitByBitIndex(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    sget-object v1, Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;->CONSTRUCTED:Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;

    iput-object v1, p0, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;->type:Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;

    goto :goto_0

    .line 62
    :cond_0
    sget-object v1, Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;->PRIMITIVE:Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;

    iput-object v1, p0, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;->type:Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;

    .line 69
    :goto_0
    aget-byte v0, p1, v0

    ushr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3

    int-to-byte v0, v0

    .line 70
    .local v0, "classValue":B
    packed-switch v0, :pswitch_data_0

    .line 81
    sget-object v1, Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;->UNIVERSAL:Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

    iput-object v1, p0, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;->tagClass:Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

    goto :goto_1

    .line 78
    :pswitch_0
    sget-object v1, Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;->PRIVATE:Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

    iput-object v1, p0, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;->tagClass:Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

    .line 79
    goto :goto_1

    .line 75
    :pswitch_1
    sget-object v1, Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;->CONTEXT_SPECIFIC:Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

    iput-object v1, p0, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;->tagClass:Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

    .line 76
    goto :goto_1

    .line 72
    :pswitch_2
    sget-object v1, Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;->APPLICATION:Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

    iput-object v1, p0, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;->tagClass:Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

    .line 73
    nop

    .line 85
    :goto_1
    return-void

    .line 52
    .end local v0    # "classValue":B
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Param tagValueType cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 49
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Param id cannot be empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Param id cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "other"    # Ljava/lang/Object;

    .line 124
    instance-of v0, p1, Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 125
    return v1

    .line 127
    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    .line 128
    .local v0, "that":Lcom/github/devnied/emvnfccard/iso7816emv/ITag;
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;->getTagBytes()[B

    move-result-object v2

    array-length v2, v2

    invoke-interface {v0}, Lcom/github/devnied/emvnfccard/iso7816emv/ITag;->getTagBytes()[B

    move-result-object v3

    array-length v3, v3

    if-eq v2, v3, :cond_1

    .line 129
    return v1

    .line 132
    :cond_1
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;->getTagBytes()[B

    move-result-object v1

    invoke-interface {v0}, Lcom/github/devnied/emvnfccard/iso7816emv/ITag;->getTagBytes()[B

    move-result-object v2

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    return v1
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNumTagBytes()I
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;->idBytes:[B

    array-length v0, v0

    return v0
.end method

.method public getTagBytes()[B
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;->idBytes:[B

    return-object v0
.end method

.method public getTagClass()Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;->tagClass:Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

    return-object v0
.end method

.method public getTagValueType()Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;->tagValueType:Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

    return-object v0
.end method

.method public getType()Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;->type:Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 137
    const/4 v0, 0x3

    .line 138
    .local v0, "hash":I
    mul-int/lit8 v1, v0, 0x3b

    iget-object v2, p0, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;->idBytes:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    add-int/2addr v1, v2

    .line 139
    .end local v0    # "hash":I
    .local v1, "hash":I
    return v1
.end method

.method public isConstructed()Z
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;->type:Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;

    sget-object v1, Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;->CONSTRUCTED:Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Tag["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;->getTagBytes()[B

    move-result-object v1

    invoke-static {v1}, Lfr/devnied/bitlib/BytesUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v1, "] Name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    const-string v1, ", TagType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;->getType()Lcom/github/devnied/emvnfccard/enums/TagTypeEnum;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 156
    const-string v1, ", ValueType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;->getTagValueType()Lcom/github/devnied/emvnfccard/enums/TagValueTypeEnum;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 158
    const-string v1, ", Class="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    iget-object v1, p0, Lcom/github/devnied/emvnfccard/iso7816emv/impl/TagImpl;->tagClass:Lcom/github/devnied/emvnfccard/iso7816emv/ITag$Class;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
