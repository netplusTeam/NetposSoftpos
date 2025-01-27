.class public Lorg/apache/sshd/common/util/io/der/ASN1Object;
.super Ljava/lang/Object;
.source "ASN1Object.java"

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final CONSTRUCTED:B = 0x20t

.field private static final serialVersionUID:J = 0x410da2c2ccd085a1L


# instance fields
.field private constructed:Z

.field private length:I

.field private objClass:Lorg/apache/sshd/common/util/io/der/ASN1Class;

.field private objType:Lorg/apache/sshd/common/util/io/der/ASN1Type;

.field private value:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    return-void
.end method

.method public varargs constructor <init>(BI[B)V
    .locals 6
    .param p1, "tag"    # B
    .param p2, "len"    # I
    .param p3, "data"    # [B

    .line 64
    invoke-static {p1}, Lorg/apache/sshd/common/util/io/der/ASN1Class;->fromDERValue(I)Lorg/apache/sshd/common/util/io/der/ASN1Class;

    move-result-object v1

    invoke-static {p1}, Lorg/apache/sshd/common/util/io/der/ASN1Type;->fromDERValue(I)Lorg/apache/sshd/common/util/io/der/ASN1Type;

    move-result-object v2

    and-int/lit8 v0, p1, 0x20

    const/16 v3, 0x20

    if-ne v0, v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v3, v0

    move-object v0, p0

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/sshd/common/util/io/der/ASN1Object;-><init>(Lorg/apache/sshd/common/util/io/der/ASN1Class;Lorg/apache/sshd/common/util/io/der/ASN1Type;ZI[B)V

    .line 65
    return-void
.end method

.method public varargs constructor <init>(Lorg/apache/sshd/common/util/io/der/ASN1Class;Lorg/apache/sshd/common/util/io/der/ASN1Type;ZI[B)V
    .locals 0
    .param p1, "c"    # Lorg/apache/sshd/common/util/io/der/ASN1Class;
    .param p2, "t"    # Lorg/apache/sshd/common/util/io/der/ASN1Type;
    .param p3, "ctored"    # Z
    .param p4, "len"    # I
    .param p5, "data"    # [B

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lorg/apache/sshd/common/util/io/der/ASN1Object;->objClass:Lorg/apache/sshd/common/util/io/der/ASN1Class;

    .line 69
    iput-object p2, p0, Lorg/apache/sshd/common/util/io/der/ASN1Object;->objType:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 70
    iput-boolean p3, p0, Lorg/apache/sshd/common/util/io/der/ASN1Object;->constructed:Z

    .line 71
    iput p4, p0, Lorg/apache/sshd/common/util/io/der/ASN1Object;->length:I

    .line 72
    iput-object p5, p0, Lorg/apache/sshd/common/util/io/der/ASN1Object;->value:[B

    .line 73
    return-void
.end method


# virtual methods
.method public asInteger()Ljava/math/BigInteger;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getObjType()Lorg/apache/sshd/common/util/io/der/ASN1Type;

    move-result-object v0

    .line 176
    .local v0, "typeValue":Lorg/apache/sshd/common/util/io/der/ASN1Type;
    sget-object v1, Lorg/apache/sshd/common/util/io/der/ASN1Type;->INTEGER:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    invoke-virtual {v1, v0}, Lorg/apache/sshd/common/util/io/der/ASN1Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 177
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->toInteger()Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    .line 179
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid DER: object is not integer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public asOID()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getObjType()Lorg/apache/sshd/common/util/io/der/ASN1Type;

    move-result-object v0

    .line 232
    .local v0, "typeValue":Lorg/apache/sshd/common/util/io/der/ASN1Type;
    sget-object v1, Lorg/apache/sshd/common/util/io/der/ASN1Type;->OBJECT_IDENTIFIER:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    invoke-virtual {v1, v0}, Lorg/apache/sshd/common/util/io/der/ASN1Type;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 233
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->toOID()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 235
    :cond_0
    new-instance v1, Ljava/io/StreamCorruptedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid DER: object is not an OID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public asObject()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getObjType()Lorg/apache/sshd/common/util/io/der/ASN1Type;

    move-result-object v0

    .line 139
    .local v0, "type":Lorg/apache/sshd/common/util/io/der/ASN1Type;
    if-eqz v0, :cond_0

    .line 143
    sget-object v1, Lorg/apache/sshd/common/util/io/der/ASN1Object$1;->$SwitchMap$org$apache$sshd$common$util$io$der$ASN1Type:[I

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/ASN1Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 165
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid DER: unsupported type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 162
    :pswitch_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getValue()[B

    move-result-object v1

    return-object v1

    .line 159
    :pswitch_1
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->asOID()Ljava/util/List;

    move-result-object v1

    return-object v1

    .line 156
    :pswitch_2
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->asString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 145
    :pswitch_3
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->asInteger()Ljava/math/BigInteger;

    move-result-object v1

    return-object v1

    .line 140
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No type set"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public asString()Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 194
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getObjType()Lorg/apache/sshd/common/util/io/der/ASN1Type;

    move-result-object v0

    .line 195
    .local v0, "type":Lorg/apache/sshd/common/util/io/der/ASN1Type;
    if-eqz v0, :cond_0

    .line 200
    sget-object v1, Lorg/apache/sshd/common/util/io/der/ASN1Object$1;->$SwitchMap$org$apache$sshd$common$util$io$der$ASN1Type:[I

    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/ASN1Type;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 224
    :pswitch_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid DER: object is not a string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 221
    :pswitch_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Invalid DER: can\'t handle UCS-4 string"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 217
    :pswitch_2
    const-string v1, "UTF-8"

    .line 218
    .local v1, "encoding":Ljava/lang/String;
    goto :goto_0

    .line 213
    .end local v1    # "encoding":Ljava/lang/String;
    :pswitch_3
    const-string v1, "UTF-16BE"

    .line 214
    .restart local v1    # "encoding":Ljava/lang/String;
    goto :goto_0

    .line 209
    .end local v1    # "encoding":Ljava/lang/String;
    :pswitch_4
    const-string v1, "ISO-8859-1"

    .line 210
    .restart local v1    # "encoding":Ljava/lang/String;
    nop

    .line 227
    :goto_0
    new-instance v2, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getValue()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getLength()I

    move-result v5

    invoke-direct {v2, v3, v4, v5, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2

    .line 196
    .end local v1    # "encoding":Ljava/lang/String;
    :cond_0
    new-instance v1, Ljava/io/IOException;

    const-string v2, "No type set"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->clone()Lorg/apache/sshd/common/util/io/der/ASN1Object;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .locals 4

    .line 319
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/util/io/der/ASN1Object;

    .line 320
    .local v0, "cpy":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getValue()[B

    move-result-object v1

    .line 321
    .local v1, "data":[B
    if-eqz v1, :cond_0

    .line 322
    invoke-virtual {v1}, [B->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v0, v2}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->setValue([B)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 324
    :cond_0
    return-object v0

    .line 325
    .end local v0    # "cpy":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    .end local v1    # "data":[B
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected clone failure: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public createParser()Lorg/apache/sshd/common/util/io/der/DERParser;
    .locals 4

    .line 134
    new-instance v0, Lorg/apache/sshd/common/util/io/der/DERParser;

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getValue()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getLength()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Lorg/apache/sshd/common/util/io/der/DERParser;-><init>([BII)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    .line 298
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 299
    return v0

    .line 301
    :cond_0
    const/4 v1, 0x1

    if-ne p0, p1, :cond_1

    .line 302
    return v1

    .line 304
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 305
    return v0

    .line 308
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/apache/sshd/common/util/io/der/ASN1Object;

    .line 309
    .local v2, "other":Lorg/apache/sshd/common/util/io/der/ASN1Object;
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getObjClass()Lorg/apache/sshd/common/util/io/der/ASN1Class;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getObjClass()Lorg/apache/sshd/common/util/io/der/ASN1Class;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 310
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getObjType()Lorg/apache/sshd/common/util/io/der/ASN1Type;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getObjType()Lorg/apache/sshd/common/util/io/der/ASN1Type;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 311
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->isConstructed()Z

    move-result v3

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->isConstructed()Z

    move-result v4

    if-ne v3, v4, :cond_3

    .line 312
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getLength()I

    move-result v3

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getLength()I

    move-result v4

    if-ne v3, v4, :cond_3

    .line 313
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getValue()[B

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getValue()[B

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getLength()I

    move-result v5

    invoke-static {v3, v0, v4, v0, v5}, Lorg/apache/sshd/common/util/NumberUtils;->diffOffset([BI[BII)I

    move-result v3

    if-gez v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    nop

    .line 309
    :goto_0
    return v0
.end method

.method public getLength()I
    .locals 1

    .line 100
    iget v0, p0, Lorg/apache/sshd/common/util/io/der/ASN1Object;->length:I

    return v0
.end method

.method public getObjClass()Lorg/apache/sshd/common/util/io/der/ASN1Class;
    .locals 1

    .line 76
    iget-object v0, p0, Lorg/apache/sshd/common/util/io/der/ASN1Object;->objClass:Lorg/apache/sshd/common/util/io/der/ASN1Class;

    return-object v0
.end method

.method public getObjType()Lorg/apache/sshd/common/util/io/der/ASN1Type;
    .locals 1

    .line 84
    iget-object v0, p0, Lorg/apache/sshd/common/util/io/der/ASN1Object;->objType:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    return-object v0
.end method

.method public getPureValueBytes()[B
    .locals 5

    .line 113
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getValue()[B

    move-result-object v0

    .line 114
    .local v0, "bytes":[B
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getLength()I

    move-result v1

    .line 115
    .local v1, "available":I
    invoke-static {v0}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v2

    .line 116
    .local v2, "numBytes":I
    if-ne v2, v1, :cond_0

    .line 117
    return-object v0

    .line 120
    :cond_0
    if-nez v1, :cond_1

    .line 121
    sget-object v3, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_BYTE_ARRAY:[B

    return-object v3

    .line 124
    :cond_1
    new-array v3, v1, [B

    .line 125
    .local v3, "pure":[B
    const/4 v4, 0x0

    invoke-static {v0, v4, v3, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    return-object v3
.end method

.method public getValue()[B
    .locals 1

    .line 108
    iget-object v0, p0, Lorg/apache/sshd/common/util/io/der/ASN1Object;->value:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 290
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getObjClass()Lorg/apache/sshd/common/util/io/der/ASN1Class;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getObjType()Lorg/apache/sshd/common/util/io/der/ASN1Type;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v0, v3

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    .line 291
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->isConstructed()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    .line 292
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getLength()I

    move-result v1

    add-int/2addr v0, v1

    .line 293
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getValue()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getLength()I

    move-result v3

    invoke-static {v1, v2, v3}, Lorg/apache/sshd/common/util/NumberUtils;->hashCode([BII)I

    move-result v1

    add-int/2addr v0, v1

    .line 290
    return v0
.end method

.method public isConstructed()Z
    .locals 1

    .line 92
    iget-boolean v0, p0, Lorg/apache/sshd/common/util/io/der/ASN1Object;->constructed:Z

    return v0
.end method

.method public setConstructed(Z)V
    .locals 0
    .param p1, "c"    # Z

    .line 96
    iput-boolean p1, p0, Lorg/apache/sshd/common/util/io/der/ASN1Object;->constructed:Z

    .line 97
    return-void
.end method

.method public setLength(I)V
    .locals 0
    .param p1, "l"    # I

    .line 104
    iput p1, p0, Lorg/apache/sshd/common/util/io/der/ASN1Object;->length:I

    .line 105
    return-void
.end method

.method public setObjClass(Lorg/apache/sshd/common/util/io/der/ASN1Class;)V
    .locals 0
    .param p1, "c"    # Lorg/apache/sshd/common/util/io/der/ASN1Class;

    .line 80
    iput-object p1, p0, Lorg/apache/sshd/common/util/io/der/ASN1Object;->objClass:Lorg/apache/sshd/common/util/io/der/ASN1Class;

    .line 81
    return-void
.end method

.method public setObjType(Lorg/apache/sshd/common/util/io/der/ASN1Type;)V
    .locals 0
    .param p1, "y"    # Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 88
    iput-object p1, p0, Lorg/apache/sshd/common/util/io/der/ASN1Object;->objType:Lorg/apache/sshd/common/util/io/der/ASN1Type;

    .line 89
    return-void
.end method

.method public setValue([B)V
    .locals 0
    .param p1, "v"    # [B

    .line 130
    iput-object p1, p0, Lorg/apache/sshd/common/util/io/der/ASN1Object;->value:[B

    .line 131
    return-void
.end method

.method public toInteger()Ljava/math/BigInteger;
    .locals 2

    .line 185
    new-instance v0, Ljava/math/BigInteger;

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getPureValueBytes()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>([B)V

    return-object v0
.end method

.method public toOID()Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 241
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getLength()I

    move-result v0

    .line 242
    .local v0, "vLen":I
    if-lez v0, :cond_6

    .line 246
    new-instance v1, Ljava/util/ArrayList;

    add-int/lit8 v2, v0, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 247
    .local v1, "oid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getValue()[B

    move-result-object v2

    .line 248
    .local v2, "bytes":[B
    const/4 v3, 0x0

    aget-byte v3, v2, v3

    and-int/lit16 v3, v3, 0xff

    .line 249
    .local v3, "val1":I
    div-int/lit8 v4, v3, 0x28

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 250
    rem-int/lit8 v4, v3, 0x28

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    const/4 v4, 0x1

    .local v4, "curPos":I
    :goto_0
    if-ge v4, v0, :cond_5

    .line 253
    aget-byte v5, v2, v4

    and-int/lit16 v5, v5, 0xff

    .line 254
    .local v5, "v":I
    const/16 v6, 0x7f

    if-gt v5, v6, :cond_0

    .line 255
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    goto :goto_2

    .line 259
    :cond_0
    and-int/lit8 v7, v5, 0x7f

    int-to-long v7, v7

    .line 260
    .local v7, "curVal":J
    add-int/lit8 v4, v4, 0x1

    .line 262
    const/4 v9, 0x1

    .line 263
    .local v9, "subLen":I
    :goto_1
    if-ge v4, v0, :cond_4

    .line 267
    const/4 v10, 0x5

    if-gt v9, v10, :cond_3

    .line 271
    aget-byte v10, v2, v4

    and-int/lit16 v5, v10, 0xff

    .line 272
    const/4 v10, 0x7

    shl-long v10, v7, v10

    const-wide v12, 0xffffffff80L

    and-long/2addr v10, v12

    int-to-long v12, v5

    const-wide/16 v14, 0x7f

    and-long/2addr v12, v14

    or-long v7, v10, v12

    .line 273
    const-wide/32 v10, 0x7fffffff

    cmp-long v12, v7, v10

    if-gtz v12, :cond_2

    .line 277
    if-gt v5, v6, :cond_1

    .line 278
    nop

    .line 282
    .end local v9    # "subLen":I
    and-long v9, v7, v10

    long-to-int v6, v9

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 252
    .end local v5    # "v":I
    .end local v7    # "curVal":J
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 262
    .restart local v5    # "v":I
    .restart local v7    # "curVal":J
    .restart local v9    # "subLen":I
    :cond_1
    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 274
    :cond_2
    new-instance v6, Ljava/io/StreamCorruptedException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "OID value exceeds 32 bits: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v6, v10}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 268
    :cond_3
    new-instance v6, Ljava/io/StreamCorruptedException;

    const-string v10, "OID component encoding beyond 5 bytes"

    invoke-direct {v6, v10}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 264
    :cond_4
    new-instance v6, Ljava/io/EOFException;

    const-string v10, "Incomplete OID value"

    invoke-direct {v6, v10}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 285
    .end local v4    # "curPos":I
    .end local v5    # "v":I
    .end local v7    # "curVal":J
    .end local v9    # "subLen":I
    :cond_5
    return-object v1

    .line 243
    .end local v1    # "oid":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v2    # "bytes":[B
    .end local v3    # "val1":I
    :cond_6
    new-instance v1, Ljava/io/EOFException;

    const-string v2, "Not enough data for an OID"

    invoke-direct {v1, v2}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getObjClass()Lorg/apache/sshd/common/util/io/der/ASN1Class;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 333
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getObjType()Lorg/apache/sshd/common/util/io/der/ASN1Type;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 334
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->isConstructed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 335
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 336
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getValue()[B

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/der/ASN1Object;->getLength()I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0x3a

    invoke-static {v1, v3, v2, v4}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->toHex([BIIC)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 332
    return-object v0
.end method
