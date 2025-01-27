.class public Lorg/jpos/emv/EMVConstructedTag;
.super Ljava/lang/Object;
.source "EMVConstructedTag.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field private final dataFormat:Lorg/jpos/tlv/TLVDataFormat;

.field private final tagNumber:Ljava/lang/Integer;

.field private final tagType:Lorg/jpos/emv/EMVTagType;

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jpos/emv/EMVProprietaryTagType;Ljava/lang/Integer;Ljava/lang/Object;)V
    .locals 3
    .param p1, "tagType"    # Lorg/jpos/emv/EMVProprietaryTagType;
    .param p2, "tagNumber"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/emv/EMVProprietaryTagType;",
            "Ljava/lang/Integer;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 70
    .local p0, "this":Lorg/jpos/emv/EMVConstructedTag;, "Lorg/jpos/emv/EMVConstructedTag<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    if-eqz p1, :cond_4

    .line 74
    if-eqz p3, :cond_3

    .line 77
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/jpos/emv/EMVStandardTagType;->isProprietaryTag(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 81
    invoke-interface {p1}, Lorg/jpos/emv/EMVProprietaryTagType;->isProprietaryFormat()Z

    move-result v0

    if-nez v0, :cond_1

    .line 86
    :try_start_0
    invoke-interface {p1}, Lorg/jpos/emv/EMVProprietaryTagType;->getFormat()Lorg/jpos/tlv/TLVDataFormat;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/emv/EMVConstructedTag;->getDataType(Lorg/jpos/tlv/TLVDataFormat;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_0
    .catch Lorg/jpos/emv/ProprietaryFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 93
    nop

    .line 95
    iput-object p1, p0, Lorg/jpos/emv/EMVConstructedTag;->tagType:Lorg/jpos/emv/EMVTagType;

    .line 96
    iput-object p3, p0, Lorg/jpos/emv/EMVConstructedTag;->value:Ljava/lang/Object;

    .line 97
    iput-object p2, p0, Lorg/jpos/emv/EMVConstructedTag;->tagNumber:Ljava/lang/Integer;

    .line 98
    invoke-interface {p1}, Lorg/jpos/emv/EMVProprietaryTagType;->getFormat()Lorg/jpos/tlv/TLVDataFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/emv/EMVConstructedTag;->dataFormat:Lorg/jpos/tlv/TLVDataFormat;

    .line 99
    return-void

    .line 87
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/jpos/emv/EMVProprietaryTagType;->getTagNumberHex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Value should be of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 88
    invoke-interface {p1}, Lorg/jpos/emv/EMVProprietaryTagType;->getDataType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 89
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "tagType":Lorg/jpos/emv/EMVProprietaryTagType;
    .end local p2    # "tagNumber":Ljava/lang/Integer;
    .end local p3    # "value":Ljava/lang/Object;, "TT;"
    throw v0
    :try_end_1
    .catch Lorg/jpos/emv/ProprietaryFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 91
    .restart local p1    # "tagType":Lorg/jpos/emv/EMVProprietaryTagType;
    .restart local p2    # "tagNumber":Ljava/lang/Integer;
    .restart local p3    # "value":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Lorg/jpos/emv/ProprietaryFormatException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 82
    .end local v0    # "e":Lorg/jpos/emv/ProprietaryFormatException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tag TLVDataFormat must be specified for proprietary tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proprietary tag number conflicts with standard tag list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tagType cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/jpos/emv/EMVProprietaryTagType;Ljava/lang/Integer;Lorg/jpos/tlv/TLVDataFormat;Ljava/lang/Object;)V
    .locals 3
    .param p1, "tagType"    # Lorg/jpos/emv/EMVProprietaryTagType;
    .param p2, "tagNumber"    # Ljava/lang/Integer;
    .param p3, "dataFormat"    # Lorg/jpos/tlv/TLVDataFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/emv/EMVProprietaryTagType;",
            "Ljava/lang/Integer;",
            "Lorg/jpos/tlv/TLVDataFormat;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 103
    .local p0, "this":Lorg/jpos/emv/EMVConstructedTag;, "Lorg/jpos/emv/EMVConstructedTag<TT;>;"
    .local p4, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    if-eqz p1, :cond_3

    .line 107
    if-eqz p4, :cond_2

    .line 110
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/jpos/emv/EMVStandardTagType;->isProprietaryTag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    invoke-static {p3}, Lorg/jpos/emv/EMVConstructedTag;->getDataType(Lorg/jpos/tlv/TLVDataFormat;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 119
    iput-object p1, p0, Lorg/jpos/emv/EMVConstructedTag;->tagType:Lorg/jpos/emv/EMVTagType;

    .line 120
    iput-object p4, p0, Lorg/jpos/emv/EMVConstructedTag;->value:Ljava/lang/Object;

    .line 121
    iput-object p2, p0, Lorg/jpos/emv/EMVConstructedTag;->tagNumber:Ljava/lang/Integer;

    .line 122
    iput-object p3, p0, Lorg/jpos/emv/EMVConstructedTag;->dataFormat:Lorg/jpos/tlv/TLVDataFormat;

    .line 123
    return-void

    .line 115
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 116
    invoke-interface {p1}, Lorg/jpos/emv/EMVProprietaryTagType;->getTagShortDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Value should be of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 117
    invoke-static {p3}, Lorg/jpos/emv/EMVConstructedTag;->getDataType(Lorg/jpos/tlv/TLVDataFormat;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proprietary tag number conflicts with standard tag list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 105
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tagType cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Lorg/jpos/emv/EMVStandardTagType;Ljava/lang/Object;)V
    .locals 3
    .param p1, "tagType"    # Lorg/jpos/emv/EMVStandardTagType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/emv/EMVStandardTagType;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 38
    .local p0, "this":Lorg/jpos/emv/EMVConstructedTag;, "Lorg/jpos/emv/EMVConstructedTag<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    if-eqz p1, :cond_4

    .line 42
    if-eqz p2, :cond_3

    .line 45
    invoke-virtual {p1}, Lorg/jpos/emv/EMVStandardTagType;->isProprietaryTag()Z

    move-result v0

    if-nez v0, :cond_2

    .line 48
    invoke-virtual {p1}, Lorg/jpos/emv/EMVStandardTagType;->isProprietaryFormat()Z

    move-result v0

    if-nez v0, :cond_1

    .line 53
    :try_start_0
    invoke-virtual {p1}, Lorg/jpos/emv/EMVStandardTagType;->getDataType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_0
    .catch Lorg/jpos/emv/ProprietaryFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 60
    nop

    .line 62
    iput-object p1, p0, Lorg/jpos/emv/EMVConstructedTag;->tagType:Lorg/jpos/emv/EMVTagType;

    .line 63
    iput-object p2, p0, Lorg/jpos/emv/EMVConstructedTag;->value:Ljava/lang/Object;

    .line 64
    invoke-virtual {p1}, Lorg/jpos/emv/EMVStandardTagType;->getTagNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/emv/EMVConstructedTag;->tagNumber:Ljava/lang/Integer;

    .line 65
    invoke-virtual {p1}, Lorg/jpos/emv/EMVStandardTagType;->getFormat()Lorg/jpos/tlv/TLVDataFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/emv/EMVConstructedTag;->dataFormat:Lorg/jpos/tlv/TLVDataFormat;

    .line 66
    return-void

    .line 54
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lorg/jpos/emv/EMVStandardTagType;->getTagNumberHex()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Value should be of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 55
    invoke-virtual {p1}, Lorg/jpos/emv/EMVStandardTagType;->getDataType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 56
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "tagType":Lorg/jpos/emv/EMVStandardTagType;
    .end local p2    # "value":Ljava/lang/Object;, "TT;"
    throw v0
    :try_end_1
    .catch Lorg/jpos/emv/ProprietaryFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 58
    .restart local p1    # "tagType":Lorg/jpos/emv/EMVStandardTagType;
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 59
    .local v0, "e":Lorg/jpos/emv/ProprietaryFormatException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 49
    .end local v0    # "e":Lorg/jpos/emv/ProprietaryFormatException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tag TLVDataFormat must be specified for tag with proprietary format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 46
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tag Number must be specified for proprietary tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "tagType cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getDataType(Lorg/jpos/tlv/TLVDataFormat;)Ljava/lang/Class;
    .locals 2
    .param p0, "dataFormat"    # Lorg/jpos/tlv/TLVDataFormat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/tlv/TLVDataFormat;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 127
    sget-object v0, Lorg/jpos/emv/EMVConstructedTag$1;->$SwitchMap$org$jpos$tlv$TLVDataFormat:[I

    invoke-virtual {p0}, Lorg/jpos/tlv/TLVDataFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 131
    const-class v0, Ljava/lang/String;

    return-object v0

    .line 129
    :pswitch_0
    const-class v0, [B

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDataFormat()Lorg/jpos/tlv/TLVDataFormat;
    .locals 1

    .line 136
    .local p0, "this":Lorg/jpos/emv/EMVConstructedTag;, "Lorg/jpos/emv/EMVConstructedTag<TT;>;"
    iget-object v0, p0, Lorg/jpos/emv/EMVConstructedTag;->dataFormat:Lorg/jpos/tlv/TLVDataFormat;

    return-object v0
.end method

.method public getTagNumber()Ljava/lang/Integer;
    .locals 1

    .line 140
    .local p0, "this":Lorg/jpos/emv/EMVConstructedTag;, "Lorg/jpos/emv/EMVConstructedTag<TT;>;"
    iget-object v0, p0, Lorg/jpos/emv/EMVConstructedTag;->tagNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTagNumberHex()Ljava/lang/String;
    .locals 1

    .line 152
    .local p0, "this":Lorg/jpos/emv/EMVConstructedTag;, "Lorg/jpos/emv/EMVConstructedTag<TT;>;"
    iget-object v0, p0, Lorg/jpos/emv/EMVConstructedTag;->tagNumber:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTagType()Lorg/jpos/emv/EMVTagType;
    .locals 1

    .line 144
    .local p0, "this":Lorg/jpos/emv/EMVConstructedTag;, "Lorg/jpos/emv/EMVConstructedTag<TT;>;"
    iget-object v0, p0, Lorg/jpos/emv/EMVConstructedTag;->tagType:Lorg/jpos/emv/EMVTagType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 148
    .local p0, "this":Lorg/jpos/emv/EMVConstructedTag;, "Lorg/jpos/emv/EMVConstructedTag<TT;>;"
    iget-object v0, p0, Lorg/jpos/emv/EMVConstructedTag;->value:Ljava/lang/Object;

    return-object v0
.end method
