.class public Lorg/jpos/iso/filter/StatefulFilter;
.super Ljava/lang/Object;
.source "StatefulFilter.java"

# interfaces
.implements Lorg/jpos/iso/ISOFilter;
.implements Lorg/jpos/core/Configurable;


# static fields
.field private static final TIMEOUT:J = 0xea60L


# instance fields
.field private ignoredFields:[I

.field private key:[I

.field private keyPrefix:Ljava/lang/String;

.field private matchDirection:I

.field private overwriteOriginalFields:Z

.field private savedFields:[I

.field private space:Lorg/jpos/space/Space;

.field private timeout:J

.field private vetoUnmatched:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-static {}, Lorg/jpos/space/SpaceFactory;->getSpace()Lorg/jpos/space/Space;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/filter/StatefulFilter;->space:Lorg/jpos/space/Space;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/filter/StatefulFilter;->keyPrefix:Ljava/lang/String;

    .line 59
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lorg/jpos/iso/filter/StatefulFilter;->key:[I

    .line 71
    const/4 v0, 0x1

    iput v0, p0, Lorg/jpos/iso/filter/StatefulFilter;->matchDirection:I

    .line 76
    const/4 v0, 0x0

    new-array v1, v0, [I

    iput-object v1, p0, Lorg/jpos/iso/filter/StatefulFilter;->ignoredFields:[I

    .line 81
    new-array v0, v0, [I

    iput-object v0, p0, Lorg/jpos/iso/filter/StatefulFilter;->savedFields:[I

    .line 89
    const-wide/32 v0, 0xea60

    iput-wide v0, p0, Lorg/jpos/iso/filter/StatefulFilter;->timeout:J

    .line 98
    return-void

    :array_0
    .array-data 4
        0xb
        0x29
    .end array-data
.end method


# virtual methods
.method public filter(Lorg/jpos/iso/ISOChannel;Lorg/jpos/iso/ISOMsg;Lorg/jpos/util/LogEvent;)Lorg/jpos/iso/ISOMsg;
    .locals 10
    .param p1, "iSOChannel"    # Lorg/jpos/iso/ISOChannel;
    .param p2, "m"    # Lorg/jpos/iso/ISOMsg;
    .param p3, "evt"    # Lorg/jpos/util/LogEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOFilter$VetoException;
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lorg/jpos/iso/filter/StatefulFilter;->getKey()[I

    move-result-object v0

    .line 160
    .local v0, "key":[I
    invoke-virtual {p0}, Lorg/jpos/iso/filter/StatefulFilter;->getKeyPrefix()Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, "keyPrefix":Ljava/lang/String;
    if-eqz v1, :cond_8

    .line 163
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 164
    .local v2, "b":Ljava/lang/StringBuilder;
    array-length v3, v0

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_0

    aget v5, v0, v4

    .line 165
    .local v5, "aKey":I
    const-string v6, "|"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p2, v5}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    .end local v5    # "aKey":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 168
    :cond_0
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 169
    .local v3, "skey":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/jpos/iso/ISOMsg;->getDirection()I

    move-result v4

    invoke-virtual {p0}, Lorg/jpos/iso/filter/StatefulFilter;->getMatchDirection()I

    move-result v5

    if-ne v4, v5, :cond_3

    .line 170
    invoke-virtual {p0}, Lorg/jpos/iso/filter/StatefulFilter;->getSavedFields()[I

    move-result-object v4

    .line 171
    .local v4, "savedFields":[I
    if-eqz v4, :cond_1

    array-length v5, v4

    if-eqz v5, :cond_1

    .line 173
    invoke-virtual {p2, v4}, Lorg/jpos/iso/ISOMsg;->clone([I)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lorg/jpos/iso/ISOMsg;->clone()Ljava/lang/Object;

    move-result-object v5

    :goto_1
    check-cast v5, Lorg/jpos/iso/ISOMsg;

    check-cast v5, Lorg/jpos/iso/ISOMsg;

    .line 174
    .local v5, "saved":Lorg/jpos/iso/ISOMsg;
    invoke-virtual {p0}, Lorg/jpos/iso/filter/StatefulFilter;->getIgnoredFields()[I

    move-result-object v6

    .line 175
    .local v6, "ignoredFields":[I
    if-eqz v6, :cond_2

    invoke-virtual {v5, v6}, Lorg/jpos/iso/ISOMsg;->unset([I)V

    .line 176
    :cond_2
    invoke-virtual {p0}, Lorg/jpos/iso/filter/StatefulFilter;->getSpace()Lorg/jpos/space/Space;

    move-result-object v7

    invoke-virtual {p0}, Lorg/jpos/iso/filter/StatefulFilter;->getTimeout()J

    move-result-wide v8

    invoke-interface {v7, v3, v5, v8, v9}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    .line 177
    return-object p2

    .line 179
    .end local v4    # "savedFields":[I
    .end local v5    # "saved":Lorg/jpos/iso/ISOMsg;
    .end local v6    # "ignoredFields":[I
    :cond_3
    invoke-virtual {p0}, Lorg/jpos/iso/filter/StatefulFilter;->getSpace()Lorg/jpos/space/Space;

    move-result-object v4

    invoke-interface {v4, v3}, Lorg/jpos/space/Space;->inp(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jpos/iso/ISOMsg;

    .line 180
    .local v4, "saved":Lorg/jpos/iso/ISOMsg;
    if-nez v4, :cond_5

    invoke-virtual {p0}, Lorg/jpos/iso/filter/StatefulFilter;->isVetoUnmatched()Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    .line 181
    :cond_4
    new-instance v5, Lorg/jpos/iso/ISOFilter$VetoException;

    const-string v6, "unmatched iso message"

    invoke-direct {v5, v6}, Lorg/jpos/iso/ISOFilter$VetoException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 182
    :cond_5
    :goto_2
    if-eqz v4, :cond_7

    .line 183
    invoke-virtual {p0}, Lorg/jpos/iso/filter/StatefulFilter;->isOverwriteOriginalFields()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {p2, v4}, Lorg/jpos/iso/ISOMsg;->merge(Lorg/jpos/iso/ISOMsg;)V

    goto :goto_3

    .line 185
    :cond_6
    invoke-virtual {v4, p2}, Lorg/jpos/iso/ISOMsg;->merge(Lorg/jpos/iso/ISOMsg;)V

    .line 186
    move-object p2, v4

    .line 189
    :cond_7
    :goto_3
    return-object p2

    .line 162
    .end local v2    # "b":Ljava/lang/StringBuilder;
    .end local v3    # "skey":Ljava/lang/String;
    .end local v4    # "saved":Lorg/jpos/iso/ISOMsg;
    :cond_8
    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "key prefix can not be null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getIgnoredField(I)I
    .locals 1
    .param p1, "index"    # I

    .line 236
    iget-object v0, p0, Lorg/jpos/iso/filter/StatefulFilter;->ignoredFields:[I

    aget v0, v0, p1

    return v0
.end method

.method public getIgnoredFields()[I
    .locals 1

    .line 245
    iget-object v0, p0, Lorg/jpos/iso/filter/StatefulFilter;->ignoredFields:[I

    return-object v0
.end method

.method public getKey(I)I
    .locals 1
    .param p1, "index"    # I

    .line 312
    iget-object v0, p0, Lorg/jpos/iso/filter/StatefulFilter;->key:[I

    aget v0, v0, p1

    return v0
.end method

.method public getKey()[I
    .locals 1

    .line 321
    iget-object v0, p0, Lorg/jpos/iso/filter/StatefulFilter;->key:[I

    return-object v0
.end method

.method public getKeyPrefix()Ljava/lang/String;
    .locals 1

    .line 124
    iget-object v0, p0, Lorg/jpos/iso/filter/StatefulFilter;->keyPrefix:Ljava/lang/String;

    return-object v0
.end method

.method public getMatchDirection()I
    .locals 1

    .line 217
    iget v0, p0, Lorg/jpos/iso/filter/StatefulFilter;->matchDirection:I

    return v0
.end method

.method public getSavedField(I)I
    .locals 1
    .param p1, "index"    # I

    .line 274
    iget-object v0, p0, Lorg/jpos/iso/filter/StatefulFilter;->savedFields:[I

    aget v0, v0, p1

    return v0
.end method

.method public getSavedFields()[I
    .locals 1

    .line 283
    iget-object v0, p0, Lorg/jpos/iso/filter/StatefulFilter;->savedFields:[I

    return-object v0
.end method

.method protected getSpace()Lorg/jpos/space/Space;
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/jpos/iso/filter/StatefulFilter;->space:Lorg/jpos/space/Space;

    return-object v0
.end method

.method public getTimeout()J
    .locals 2

    .line 349
    iget-wide v0, p0, Lorg/jpos/iso/filter/StatefulFilter;->timeout:J

    return-wide v0
.end method

.method public isOverwriteOriginalFields()Z
    .locals 1

    .line 367
    iget-boolean v0, p0, Lorg/jpos/iso/filter/StatefulFilter;->overwriteOriginalFields:Z

    return v0
.end method

.method public isVetoUnmatched()Z
    .locals 1

    .line 199
    iget-boolean v0, p0, Lorg/jpos/iso/filter/StatefulFilter;->vetoUnmatched:Z

    return v0
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 4
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 139
    const-string v0, "veto-unmatched"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jpos/iso/filter/StatefulFilter;->setVetoUnmatched(Z)V

    .line 140
    const-string v0, "space"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/iso/filter/StatefulFilter;->setSpace(Ljava/lang/String;)V

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "key-prefix"

    invoke-interface {p1, v2, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/iso/filter/StatefulFilter;->setKeyPrefix(Ljava/lang/String;)V

    .line 142
    const-string v0, "timeout"

    const-wide/32 v2, 0xea60

    invoke-interface {p1, v0, v2, v3}, Lorg/jpos/core/Configuration;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lorg/jpos/iso/filter/StatefulFilter;->setTimeout(J)V

    .line 143
    const-string v0, "overwrite-original-fields"

    const/4 v2, 0x1

    invoke-interface {p1, v0, v2}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jpos/iso/filter/StatefulFilter;->setOverwriteOriginalFields(Z)V

    .line 144
    const-string v0, "direction"

    const-string v3, "incoming"

    invoke-interface {p1, v0, v3}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    move v0, v2

    .line 146
    .local v0, "dir":I
    invoke-virtual {p0, v0}, Lorg/jpos/iso/filter/StatefulFilter;->setMatchDirection(I)V

    .line 148
    const-string v2, "key"

    const-string v3, "11 41"

    invoke-interface {p1, v2, v3}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jpos/iso/ISOUtil;->toIntArray(Ljava/lang/String;)[I

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jpos/iso/filter/StatefulFilter;->setKey([I)V

    .line 149
    const-string v2, "saved-fields"

    invoke-interface {p1, v2, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/jpos/iso/ISOUtil;->toIntArray(Ljava/lang/String;)[I

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jpos/iso/filter/StatefulFilter;->setSavedFields([I)V

    .line 150
    const-string v2, "ignored-fields"

    invoke-interface {p1, v2, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/iso/ISOUtil;->toIntArray(Ljava/lang/String;)[I

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jpos/iso/filter/StatefulFilter;->setIgnoredFields([I)V

    .line 151
    return-void
.end method

.method public setIgnoredField(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "ignoredFields"    # I

    .line 255
    iget-object v0, p0, Lorg/jpos/iso/filter/StatefulFilter;->ignoredFields:[I

    aput p2, v0, p1

    .line 256
    return-void
.end method

.method public setIgnoredFields([I)V
    .locals 0
    .param p1, "ignoredFields"    # [I

    .line 264
    iput-object p1, p0, Lorg/jpos/iso/filter/StatefulFilter;->ignoredFields:[I

    .line 265
    return-void
.end method

.method public setKey(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "key"    # I

    .line 331
    iget-object v0, p0, Lorg/jpos/iso/filter/StatefulFilter;->key:[I

    aput p2, v0, p1

    .line 332
    return-void
.end method

.method public setKey([I)V
    .locals 0
    .param p1, "key"    # [I

    .line 340
    iput-object p1, p0, Lorg/jpos/iso/filter/StatefulFilter;->key:[I

    .line 341
    return-void
.end method

.method public setKeyPrefix(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyPrefix"    # Ljava/lang/String;

    .line 133
    iput-object p1, p0, Lorg/jpos/iso/filter/StatefulFilter;->keyPrefix:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setMatchDirection(I)V
    .locals 0
    .param p1, "matchDirection"    # I

    .line 226
    iput p1, p0, Lorg/jpos/iso/filter/StatefulFilter;->matchDirection:I

    .line 227
    return-void
.end method

.method public setOverwriteOriginalFields(Z)V
    .locals 0
    .param p1, "overwriteOriginalFields"    # Z

    .line 376
    iput-boolean p1, p0, Lorg/jpos/iso/filter/StatefulFilter;->overwriteOriginalFields:Z

    .line 377
    return-void
.end method

.method public setSavedField(II)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "savedFields"    # I

    .line 293
    iget-object v0, p0, Lorg/jpos/iso/filter/StatefulFilter;->savedFields:[I

    aput p2, v0, p1

    .line 294
    return-void
.end method

.method public setSavedFields([I)V
    .locals 0
    .param p1, "savedFields"    # [I

    .line 302
    iput-object p1, p0, Lorg/jpos/iso/filter/StatefulFilter;->savedFields:[I

    .line 303
    return-void
.end method

.method public setSpace(Ljava/lang/String;)V
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .line 153
    invoke-static {p1}, Lorg/jpos/space/SpaceFactory;->getSpace(Ljava/lang/String;)Lorg/jpos/space/Space;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/iso/filter/StatefulFilter;->setSpace(Lorg/jpos/space/Space;)V

    .line 154
    return-void
.end method

.method protected setSpace(Lorg/jpos/space/Space;)V
    .locals 0
    .param p1, "space"    # Lorg/jpos/space/Space;

    .line 115
    iput-object p1, p0, Lorg/jpos/iso/filter/StatefulFilter;->space:Lorg/jpos/space/Space;

    .line 116
    return-void
.end method

.method public setTimeout(J)V
    .locals 0
    .param p1, "timeout"    # J

    .line 358
    iput-wide p1, p0, Lorg/jpos/iso/filter/StatefulFilter;->timeout:J

    .line 359
    return-void
.end method

.method public setVetoUnmatched(Z)V
    .locals 0
    .param p1, "vetoUnmatched"    # Z

    .line 208
    iput-boolean p1, p0, Lorg/jpos/iso/filter/StatefulFilter;->vetoUnmatched:Z

    .line 209
    return-void
.end method
