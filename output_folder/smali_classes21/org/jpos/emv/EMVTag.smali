.class public abstract Lorg/jpos/emv/EMVTag;
.super Ljava/lang/Object;
.source "EMVTag.java"

# interfaces
.implements Lorg/jpos/tlv/TagValue;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jpos/tlv/TagValue<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x40e06ece96eeb197L


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

    .line 72
    .local p0, "this":Lorg/jpos/emv/EMVTag;, "Lorg/jpos/emv/EMVTag<TT;>;"
    .local p3, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    if-eqz p1, :cond_4

    .line 76
    if-eqz p3, :cond_3

    .line 79
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/jpos/emv/EMVStandardTagType;->isProprietaryTag(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    invoke-interface {p1}, Lorg/jpos/emv/EMVProprietaryTagType;->isProprietaryFormat()Z

    move-result v0

    if-nez v0, :cond_1

    .line 88
    :try_start_0
    invoke-interface {p1}, Lorg/jpos/emv/EMVProprietaryTagType;->getFormat()Lorg/jpos/tlv/TLVDataFormat;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/emv/EMVTag;->getDataType(Lorg/jpos/tlv/TLVDataFormat;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0
    :try_end_0
    .catch Lorg/jpos/emv/ProprietaryFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_0

    .line 95
    nop

    .line 97
    iput-object p1, p0, Lorg/jpos/emv/EMVTag;->tagType:Lorg/jpos/emv/EMVTagType;

    .line 98
    iput-object p3, p0, Lorg/jpos/emv/EMVTag;->value:Ljava/lang/Object;

    .line 99
    iput-object p2, p0, Lorg/jpos/emv/EMVTag;->tagNumber:Ljava/lang/Integer;

    .line 100
    invoke-interface {p1}, Lorg/jpos/emv/EMVProprietaryTagType;->getFormat()Lorg/jpos/tlv/TLVDataFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/emv/EMVTag;->dataFormat:Lorg/jpos/tlv/TLVDataFormat;

    .line 101
    return-void

    .line 89
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

    .line 90
    invoke-interface {p1}, Lorg/jpos/emv/EMVProprietaryTagType;->getDataType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 91
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

    .line 93
    .restart local p1    # "tagType":Lorg/jpos/emv/EMVProprietaryTagType;
    .restart local p2    # "tagNumber":Ljava/lang/Integer;
    .restart local p3    # "value":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Lorg/jpos/emv/ProprietaryFormatException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 84
    .end local v0    # "e":Lorg/jpos/emv/ProprietaryFormatException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tag TLVDataFormat must be specified for proprietary tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proprietary tag number conflicts with standard tag list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 74
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

    .line 105
    .local p0, "this":Lorg/jpos/emv/EMVTag;, "Lorg/jpos/emv/EMVTag<TT;>;"
    .local p4, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    if-eqz p1, :cond_3

    .line 109
    if-eqz p4, :cond_2

    .line 112
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lorg/jpos/emv/EMVStandardTagType;->isProprietaryTag(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-static {p3}, Lorg/jpos/emv/EMVTag;->getDataType(Lorg/jpos/tlv/TLVDataFormat;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    iput-object p1, p0, Lorg/jpos/emv/EMVTag;->tagType:Lorg/jpos/emv/EMVTagType;

    .line 122
    iput-object p4, p0, Lorg/jpos/emv/EMVTag;->value:Ljava/lang/Object;

    .line 123
    iput-object p2, p0, Lorg/jpos/emv/EMVTag;->tagNumber:Ljava/lang/Integer;

    .line 124
    iput-object p3, p0, Lorg/jpos/emv/EMVTag;->dataFormat:Lorg/jpos/tlv/TLVDataFormat;

    .line 125
    return-void

    .line 117
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

    .line 118
    invoke-interface {p1}, Lorg/jpos/emv/EMVProprietaryTagType;->getTagShortDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Value should be of type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 119
    invoke-static {p3}, Lorg/jpos/emv/EMVTag;->getDataType(Lorg/jpos/tlv/TLVDataFormat;)Ljava/lang/Class;

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

    .line 113
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Proprietary tag number conflicts with standard tag list"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 110
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
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

    .line 40
    .local p0, "this":Lorg/jpos/emv/EMVTag;, "Lorg/jpos/emv/EMVTag<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    if-eqz p1, :cond_4

    .line 44
    if-eqz p2, :cond_3

    .line 47
    invoke-virtual {p1}, Lorg/jpos/emv/EMVStandardTagType;->isProprietaryTag()Z

    move-result v0

    if-nez v0, :cond_2

    .line 50
    invoke-virtual {p1}, Lorg/jpos/emv/EMVStandardTagType;->isProprietaryFormat()Z

    move-result v0

    if-nez v0, :cond_1

    .line 55
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

    .line 62
    nop

    .line 64
    iput-object p1, p0, Lorg/jpos/emv/EMVTag;->tagType:Lorg/jpos/emv/EMVTagType;

    .line 65
    iput-object p2, p0, Lorg/jpos/emv/EMVTag;->value:Ljava/lang/Object;

    .line 66
    invoke-virtual {p1}, Lorg/jpos/emv/EMVStandardTagType;->getTagNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/emv/EMVTag;->tagNumber:Ljava/lang/Integer;

    .line 67
    invoke-virtual {p1}, Lorg/jpos/emv/EMVStandardTagType;->getFormat()Lorg/jpos/tlv/TLVDataFormat;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/emv/EMVTag;->dataFormat:Lorg/jpos/tlv/TLVDataFormat;

    .line 68
    return-void

    .line 56
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

    .line 57
    invoke-virtual {p1}, Lorg/jpos/emv/EMVStandardTagType;->getDataType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". Received "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 58
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

    .line 60
    .restart local p1    # "tagType":Lorg/jpos/emv/EMVStandardTagType;
    .restart local p2    # "value":Ljava/lang/Object;, "TT;"
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Lorg/jpos/emv/ProprietaryFormatException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 51
    .end local v0    # "e":Lorg/jpos/emv/ProprietaryFormatException;
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tag TLVDataFormat must be specified for tag with proprietary format"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 48
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tag Number must be specified for proprietary tag"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 45
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 42
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

    .line 130
    sget-object v0, Lorg/jpos/emv/EMVTag$1;->$SwitchMap$org$jpos$tlv$TLVDataFormat:[I

    invoke-virtual {p0}, Lorg/jpos/tlv/TLVDataFormat;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 136
    const-class v0, Ljava/lang/String;

    return-object v0

    .line 134
    :pswitch_0
    const-class v0, [B

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDataFormat()Lorg/jpos/tlv/TLVDataFormat;
    .locals 1

    .line 151
    .local p0, "this":Lorg/jpos/emv/EMVTag;, "Lorg/jpos/emv/EMVTag<TT;>;"
    iget-object v0, p0, Lorg/jpos/emv/EMVTag;->dataFormat:Lorg/jpos/tlv/TLVDataFormat;

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    .line 142
    .local p0, "this":Lorg/jpos/emv/EMVTag;, "Lorg/jpos/emv/EMVTag<TT;>;"
    invoke-virtual {p0}, Lorg/jpos/emv/EMVTag;->getTagNumberHex()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTagNumber()Ljava/lang/Integer;
    .locals 1

    .line 155
    .local p0, "this":Lorg/jpos/emv/EMVTag;, "Lorg/jpos/emv/EMVTag<TT;>;"
    iget-object v0, p0, Lorg/jpos/emv/EMVTag;->tagNumber:Ljava/lang/Integer;

    return-object v0
.end method

.method public getTagNumberHex()Ljava/lang/String;
    .locals 1

    .line 167
    .local p0, "this":Lorg/jpos/emv/EMVTag;, "Lorg/jpos/emv/EMVTag<TT;>;"
    iget-object v0, p0, Lorg/jpos/emv/EMVTag;->tagNumber:Ljava/lang/Integer;

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

    .line 159
    .local p0, "this":Lorg/jpos/emv/EMVTag;, "Lorg/jpos/emv/EMVTag<TT;>;"
    iget-object v0, p0, Lorg/jpos/emv/EMVTag;->tagType:Lorg/jpos/emv/EMVTagType;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 163
    .local p0, "this":Lorg/jpos/emv/EMVTag;, "Lorg/jpos/emv/EMVTag<TT;>;"
    iget-object v0, p0, Lorg/jpos/emv/EMVTag;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public isComposite()Z
    .locals 1

    .line 147
    .local p0, "this":Lorg/jpos/emv/EMVTag;, "Lorg/jpos/emv/EMVTag<TT;>;"
    const/4 v0, 0x0

    return v0
.end method
