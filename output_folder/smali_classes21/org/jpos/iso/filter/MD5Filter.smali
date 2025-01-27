.class public Lorg/jpos/iso/filter/MD5Filter;
.super Ljava/lang/Object;
.source "MD5Filter.java"

# interfaces
.implements Lorg/jpos/iso/ISOFilter;
.implements Lorg/jpos/core/Configurable;


# instance fields
.field fields:[I

.field key:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method


# virtual methods
.method public filter(Lorg/jpos/iso/ISOChannel;Lorg/jpos/iso/ISOMsg;Lorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;
    .locals 9
    .param p1, "channel"    # Lorg/jpos/iso/ISOChannel;
    .param p2, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p3, "evt"    # Lorg/jpos/util/LogEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOFilter$VetoException;
        }
    .end annotation

    .line 86
    iget-object v0, p0, Lorg/jpos/iso/filter/MD5Filter;->key:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/jpos/iso/filter/MD5Filter;->fields:[I

    if-eqz v0, :cond_7

    .line 89
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 90
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Lorg/jpos/iso/filter/MD5Filter;->getKey()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->update([B)V

    .line 91
    invoke-virtual {p0, p2}, Lorg/jpos/iso/filter/MD5Filter;->getFields(Lorg/jpos/iso/ISOMsg;)[I

    move-result-object v1

    .line 92
    .local v1, "f":[I
    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget v5, v1, v4

    .line 93
    .local v5, "fld":I
    invoke-virtual {p2, v5}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 94
    invoke-virtual {p2, v5}, Lorg/jpos/iso/ISOMsg;->getComponent(I)Lorg/jpos/iso/ISOComponent;

    move-result-object v6

    .line 95
    .local v6, "c":Lorg/jpos/iso/ISOComponent;
    instance-of v7, v6, Lorg/jpos/iso/ISOBinaryField;

    if-eqz v7, :cond_0

    .line 96
    invoke-virtual {v6}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [B

    check-cast v7, [B

    invoke-virtual {v0, v7}, Ljava/security/MessageDigest;->update([B)V

    goto :goto_1

    .line 98
    :cond_0
    invoke-virtual {v6}, Lorg/jpos/iso/ISOComponent;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/security/MessageDigest;->update([B)V

    .line 92
    .end local v5    # "fld":I
    .end local v6    # "c":Lorg/jpos/iso/ISOComponent;
    :cond_1
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 101
    :cond_2
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 102
    .local v2, "digest":[B
    invoke-virtual {p2}, Lorg/jpos/iso/ISOMsg;->getDirection()I

    move-result v4

    const/4 v5, 0x2

    const/16 v6, 0x80

    const/16 v7, 0x40

    const/16 v8, 0x8

    if-ne v4, v5, :cond_3

    .line 103
    new-instance v4, Lorg/jpos/iso/ISOBinaryField;

    invoke-direct {v4, v7, v2, v3, v8}, Lorg/jpos/iso/ISOBinaryField;-><init>(I[BII)V

    invoke-virtual {p2, v4}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V

    .line 104
    new-instance v3, Lorg/jpos/iso/ISOBinaryField;

    invoke-direct {v3, v6, v2, v8, v8}, Lorg/jpos/iso/ISOBinaryField;-><init>(I[BII)V

    invoke-virtual {p2, v3}, Lorg/jpos/iso/ISOMsg;->set(Lorg/jpos/iso/ISOComponent;)V

    goto :goto_2

    .line 106
    :cond_3
    const/16 v4, 0x10

    new-array v4, v4, [B

    .line 107
    .local v4, "rxDigest":[B
    invoke-virtual {p2, v7}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 108
    nop

    .line 109
    invoke-virtual {p2, v7}, Lorg/jpos/iso/ISOMsg;->getValue(I)Ljava/lang/Object;

    move-result-object v5

    .line 108
    invoke-static {v5, v3, v4, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 111
    :cond_4
    invoke-virtual {p2, v6}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 112
    nop

    .line 113
    invoke-virtual {p2, v6}, Lorg/jpos/iso/ISOMsg;->getValue(I)Ljava/lang/Object;

    move-result-object v5

    .line 112
    invoke-static {v5, v3, v4, v8, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    :cond_5
    invoke-static {v2, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 123
    invoke-virtual {p2, v7}, Lorg/jpos/iso/ISOMsg;->unset(I)V

    .line 124
    invoke-virtual {p2, v6}, Lorg/jpos/iso/ISOMsg;->unset(I)V

    .line 130
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "f":[I
    .end local v2    # "digest":[B
    .end local v4    # "rxDigest":[B
    :goto_2
    nop

    .line 131
    return-object p2

    .line 116
    .restart local v0    # "md":Ljava/security/MessageDigest;
    .restart local v1    # "f":[I
    .restart local v2    # "digest":[B
    .restart local v4    # "rxDigest":[B
    :cond_6
    invoke-virtual {p3, p2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MAC expected: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 118
    invoke-static {v2}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 117
    invoke-virtual {p3, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 119
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MAC received: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 120
    invoke-static {v4}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    invoke-virtual {p3, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 121
    new-instance v3, Lorg/jpos/iso/ISOFilter$VetoException;

    const-string v5, "invalid MAC"

    invoke-direct {v3, v5}, Lorg/jpos/iso/ISOFilter$VetoException;-><init>(Ljava/lang/String;)V

    .end local p1    # "channel":Lorg/jpos/iso/ISOChannel;
    .end local p2    # "m":Lorg/jpos/iso/ISOMsg;
    .end local p3    # "evt":Lorg/jpos/util/LogEvent;
    throw v3
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    .end local v0    # "md":Ljava/security/MessageDigest;
    .end local v1    # "f":[I
    .end local v2    # "digest":[B
    .end local v4    # "rxDigest":[B
    .restart local p1    # "channel":Lorg/jpos/iso/ISOChannel;
    .restart local p2    # "m":Lorg/jpos/iso/ISOMsg;
    .restart local p3    # "evt":Lorg/jpos/util/LogEvent;
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Lorg/jpos/iso/ISOException;
    new-instance v1, Lorg/jpos/iso/ISOFilter$VetoException;

    invoke-direct {v1, v0}, Lorg/jpos/iso/ISOFilter$VetoException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 126
    .end local v0    # "e":Lorg/jpos/iso/ISOException;
    :catch_1
    move-exception v0

    .line 127
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Lorg/jpos/iso/ISOFilter$VetoException;

    invoke-direct {v1, v0}, Lorg/jpos/iso/ISOFilter$VetoException;-><init>(Ljava/lang/Exception;)V

    throw v1

    .line 87
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_7
    new-instance v0, Lorg/jpos/iso/ISOFilter$VetoException;

    const-string v1, "MD5Filter not configured"

    invoke-direct {v0, v1}, Lorg/jpos/iso/ISOFilter$VetoException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getFields(Lorg/jpos/iso/ISOMsg;)[I
    .locals 1
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;

    .line 81
    iget-object v0, p0, Lorg/jpos/iso/filter/MD5Filter;->fields:[I

    return-object v0
.end method

.method protected getKey()[B
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/jpos/iso/filter/MD5Filter;->key:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 5
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 59
    const-string v0, "key"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/filter/MD5Filter;->key:Ljava/lang/String;

    .line 60
    const-string v0, "fields"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "fieldList":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 64
    new-instance v1, Ljava/util/StringTokenizer;

    invoke-direct {v1, v0}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 65
    .local v1, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    new-array v2, v2, [I

    .line 67
    .local v2, "f":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_0

    .line 68
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v3

    .line 67
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 70
    .end local v3    # "i":I
    :cond_0
    iput-object v2, p0, Lorg/jpos/iso/filter/MD5Filter;->fields:[I

    .line 71
    return-void

    .line 62
    .end local v1    # "st":Ljava/util/StringTokenizer;
    .end local v2    # "f":[I
    :cond_1
    new-instance v1, Lorg/jpos/core/ConfigurationException;

    const-string v2, "\'fields\' property not present"

    invoke-direct {v1, v2}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setFields([I)V
    .locals 0
    .param p1, "fields"    # [I

    .line 73
    iput-object p1, p0, Lorg/jpos/iso/filter/MD5Filter;->fields:[I

    .line 74
    return-void
.end method
