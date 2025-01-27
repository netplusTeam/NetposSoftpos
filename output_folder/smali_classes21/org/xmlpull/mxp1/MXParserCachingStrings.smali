.class public Lorg/xmlpull/mxp1/MXParserCachingStrings;
.super Lorg/xmlpull/mxp1/MXParser;
.source "MXParserCachingStrings.java"


# static fields
.field private static final CACHE_LOAD:I = 0x4d

.field private static final CACHE_STATISTICS:Z = false

.field private static final INITIAL_CAPACITY:I = 0xd

.field private static final TRACE_SIZING:Z = false

.field private static globalCacheEntriesCount:I

.field private static globalCacheEntriesThreshold:I

.field private static globalKeys:[[C

.field private static globalValues:[Ljava/lang/String;


# instance fields
.field private cacheEntriesCount:I

.field private cacheEntriesThreshold:I

.field private cacheStatCalls:I

.field private cacheStatRehash:I

.field private cacheStatResets:I

.field private cacheStatWalks:I

.field private global:Z

.field private keys:[[C

.field private values:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lorg/xmlpull/mxp1/MXParser;-><init>()V

    .line 53
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->allStringsInterned:Z

    .line 54
    return-void
.end method

.method private static final keysAreEqual([CII[CII)Z
    .locals 4
    .param p0, "a"    # [C
    .param p1, "astart"    # I
    .param p2, "alength"    # I
    .param p3, "b"    # [C
    .param p4, "bstart"    # I
    .param p5, "blength"    # I

    .line 204
    const/4 v0, 0x0

    if-eq p2, p5, :cond_0

    .line 205
    return v0

    .line 207
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-lt v1, p2, :cond_1

    .line 212
    const/4 v0, 0x1

    return v0

    .line 208
    :cond_1
    add-int v2, p1, v1

    aget-char v2, p0, v2

    add-int v3, p4, v1

    aget-char v3, p3, v3

    if-eq v2, v3, :cond_2

    .line 209
    return v0

    .line 207
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private rehash()V
    .locals 14

    .line 170
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 171
    .local v0, "newSize":I
    mul-int/lit8 v1, v0, 0x4d

    div-int/lit8 v1, v1, 0x64

    iput v1, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->cacheEntriesThreshold:I

    .line 172
    if-ge v1, v0, :cond_4

    .line 175
    new-array v1, v0, [[C

    .line 176
    .local v1, "newKeys":[[C
    new-array v2, v0, [Ljava/lang/String;

    .line 177
    .local v2, "newValues":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    array-length v5, v4

    if-lt v3, v5, :cond_0

    .line 198
    iput-object v1, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    .line 199
    iput-object v2, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->values:[Ljava/lang/String;

    .line 200
    .end local v0    # "newSize":I
    .end local v1    # "newKeys":[[C
    .end local v2    # "newValues":[Ljava/lang/String;
    .end local v3    # "i":I
    return-void

    .line 178
    .restart local v0    # "newSize":I
    .restart local v1    # "newKeys":[[C
    .restart local v2    # "newValues":[Ljava/lang/String;
    .restart local v3    # "i":I
    :cond_0
    aget-object v5, v4, v3

    .line 179
    .local v5, "k":[C
    const/4 v6, 0x0

    aput-object v6, v4, v3

    .line 180
    iget-object v4, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->values:[Ljava/lang/String;

    aget-object v12, v4, v3

    .line 181
    .local v12, "v":Ljava/lang/String;
    aput-object v6, v4, v3

    .line 182
    if-eqz v5, :cond_3

    .line 183
    const/4 v4, 0x0

    array-length v6, v5

    invoke-static {v5, v4, v6}, Lorg/xmlpull/mxp1/MXParser;->fastHash([CII)I

    move-result v4

    rem-int/2addr v4, v0

    .line 184
    .local v4, "newOffset":I
    const/4 v6, 0x0

    .line 185
    .local v6, "newk":[C
    nop

    :goto_1
    aget-object v7, v1, v4

    move-object v13, v7

    .end local v6    # "newk":[C
    .local v13, "newk":[C
    if-nez v7, :cond_1

    .line 194
    aput-object v5, v1, v4

    .line 195
    aput-object v12, v2, v4

    goto :goto_2

    .line 186
    :cond_1
    const/4 v7, 0x0

    array-length v8, v13

    const/4 v10, 0x0

    array-length v11, v5

    move-object v6, v13

    move-object v9, v5

    invoke-static/range {v6 .. v11}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keysAreEqual([CII[CII)Z

    move-result v6

    if-nez v6, :cond_2

    .line 191
    add-int/lit8 v6, v4, 0x1

    rem-int v4, v6, v0

    move-object v6, v13

    goto :goto_1

    .line 188
    :cond_2
    new-instance v6, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "internal cache error: duplicated keys: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v13}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    const-string v8, " and "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 177
    .end local v4    # "newOffset":I
    .end local v5    # "k":[C
    .end local v12    # "v":Ljava/lang/String;
    .end local v13    # "newk":[C
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 172
    .end local v1    # "newKeys":[[C
    .end local v2    # "newValues":[Ljava/lang/String;
    .end local v3    # "i":I
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "internal error: threshold must be less than capacity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public finalize()V
    .locals 0

    .line 97
    return-void
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 76
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->allStringsInterned:Z

    return v0

    .line 79
    :cond_0
    invoke-super {p0, p1}, Lorg/xmlpull/mxp1/MXParser;->getFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected initStringCache()V
    .locals 2

    .line 145
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    if-nez v0, :cond_0

    .line 153
    const/16 v0, 0xa

    iput v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->cacheEntriesThreshold:I

    .line 154
    nop

    .line 156
    const/16 v0, 0xd

    new-array v1, v0, [[C

    iput-object v1, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    .line 157
    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->values:[Ljava/lang/String;

    .line 158
    const/4 v0, 0x0

    iput v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->cacheEntriesCount:I

    .line 160
    :cond_0
    return-void
.end method

.method protected newString([CII)Ljava/lang/String;
    .locals 1
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 104
    iget-boolean v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->allStringsInterned:Z

    if-eqz v0, :cond_0

    .line 105
    invoke-virtual {p0, p1, p2, p3}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->newStringIntern([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 107
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xmlpull/mxp1/MXParser;->newString([CII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected newStringIntern([CII)Ljava/lang/String;
    .locals 9
    .param p1, "cbuf"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 118
    iget v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->cacheEntriesCount:I

    iget v1, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->cacheEntriesThreshold:I

    if-lt v0, v1, :cond_0

    .line 119
    invoke-direct {p0}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->rehash()V

    .line 121
    :cond_0
    invoke-static {p1, p2, p3}, Lorg/xmlpull/mxp1/MXParser;->fastHash([CII)I

    move-result v0

    iget-object v1, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    array-length v1, v1

    rem-int/2addr v0, v1

    .line 122
    .local v0, "offset":I
    const/4 v1, 0x0

    .line 123
    .local v1, "k":[C
    nop

    .line 124
    :goto_0
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    aget-object v2, v2, v0

    move-object v1, v2

    if-eqz v2, :cond_2

    const/4 v4, 0x0

    array-length v5, v1

    move-object v3, v1

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-static/range {v3 .. v8}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keysAreEqual([CII[CII)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 127
    :cond_1
    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    array-length v3, v3

    rem-int v0, v2, v3

    goto :goto_0

    .line 130
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    .line 131
    iget-object v2, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->values:[Ljava/lang/String;

    aget-object v2, v2, v0

    return-object v2

    .line 133
    :cond_3
    new-array v1, p3, [C

    .line 134
    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 135
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    .line 136
    .local v2, "v":Ljava/lang/String;
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    aput-object v1, v3, v0

    .line 137
    iget-object v3, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->values:[Ljava/lang/String;

    aput-object v2, v3, v0

    .line 138
    iget v3, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->cacheEntriesCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->cacheEntriesCount:I

    .line 139
    return-object v2
.end method

.method protected resetStringCache()V
    .locals 0

    .line 165
    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->initStringCache()V

    .line 166
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "state"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 62
    const-string v0, "http://xmlpull.org/v1/doc/features.html#names-interned"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 63
    iget v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->eventType:I

    if-nez v0, :cond_0

    .line 65
    iput-boolean p2, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->allStringsInterned:Z

    .line 66
    if-nez p2, :cond_2

    .line 67
    iget-object v0, p0, Lorg/xmlpull/mxp1/MXParserCachingStrings;->keys:[[C

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/xmlpull/mxp1/MXParserCachingStrings;->resetStringCache()V

    goto :goto_0

    .line 63
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const/4 v1, 0x0

    const-string v2, "interning names feature can only be changed before parsing"

    invoke-direct {v0, v2, p0, v1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/Throwable;)V

    throw v0

    .line 70
    :cond_1
    invoke-super {p0, p1, p2}, Lorg/xmlpull/mxp1/MXParser;->setFeature(Ljava/lang/String;Z)V

    .line 72
    :cond_2
    :goto_0
    return-void
.end method
