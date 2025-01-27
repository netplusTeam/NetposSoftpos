.class public final Lcom/sleepycat/je/tree/Key;
.super Ljava/lang/Object;
.source "Key.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/tree/Key$DumpType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/sleepycat/je/tree/Key;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field public static DUMP_TYPE:Lcom/sleepycat/je/tree/Key$DumpType;

.field public static final EMPTY_KEY:[B


# instance fields
.field private key:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    nop

    .line 93
    sget-object v0, Lcom/sleepycat/je/tree/Key$DumpType;->BINARY:Lcom/sleepycat/je/tree/Key$DumpType;

    sput-object v0, Lcom/sleepycat/je/tree/Key;->DUMP_TYPE:Lcom/sleepycat/je/tree/Key$DumpType;

    .line 95
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/sleepycat/je/tree/Key;->EMPTY_KEY:[B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 3
    .param p1, "key"    # [B

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    if-nez p1, :cond_0

    .line 104
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/tree/Key;->key:[B

    goto :goto_0

    .line 106
    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/sleepycat/je/tree/Key;->key:[B

    .line 107
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 109
    :goto_0
    return-void
.end method

.method public static compareKeys(Lcom/sleepycat/je/DatabaseEntry;Lcom/sleepycat/je/DatabaseEntry;Ljava/util/Comparator;)I
    .locals 3
    .param p0, "entry1"    # Lcom/sleepycat/je/DatabaseEntry;
    .param p1, "entry2"    # Lcom/sleepycat/je/DatabaseEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Lcom/sleepycat/je/DatabaseEntry;",
            "Ljava/util/Comparator<",
            "[B>;)I"
        }
    .end annotation

    .line 207
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    invoke-static {p0}, Lcom/sleepycat/je/tree/Key;->makeKey(Lcom/sleepycat/je/DatabaseEntry;)[B

    move-result-object v0

    .line 208
    .local v0, "key1":[B
    invoke-static {p1}, Lcom/sleepycat/je/tree/Key;->makeKey(Lcom/sleepycat/je/DatabaseEntry;)[B

    move-result-object v1

    .line 209
    .local v1, "key2":[B
    if-eqz p2, :cond_0

    .line 210
    invoke-interface {p2, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v2

    return v2

    .line 212
    :cond_0
    invoke-static {v0, v1}, Lcom/sleepycat/je/tree/Key;->compareUnsignedBytes([B[B)I

    move-result v2

    return v2
.end method

.method public static compareKeys([BII[BIILjava/util/Comparator;)I
    .locals 2
    .param p0, "key1"    # [B
    .param p1, "off1"    # I
    .param p2, "len1"    # I
    .param p3, "key2"    # [B
    .param p4, "off2"    # I
    .param p5, "len2"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BII[BII",
            "Ljava/util/Comparator<",
            "[B>;)I"
        }
    .end annotation

    .line 171
    .local p6, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    if-nez p6, :cond_0

    .line 172
    invoke-static/range {p0 .. p5}, Lcom/sleepycat/je/tree/Key;->compareUnsignedBytes([BII[BII)I

    move-result v0

    return v0

    .line 175
    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    array-length v1, p0

    if-eq p2, v1, :cond_2

    .line 176
    :cond_1
    new-array v1, p2, [B

    .line 177
    .local v1, "b":[B
    invoke-static {p0, p1, v1, v0, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    move-object p0, v1

    .line 180
    .end local v1    # "b":[B
    :cond_2
    if-nez p4, :cond_3

    array-length v1, p3

    if-eq p5, v1, :cond_4

    .line 181
    :cond_3
    new-array v1, p5, [B

    .line 182
    .restart local v1    # "b":[B
    invoke-static {p3, p4, v1, v0, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 183
    move-object p3, v1

    .line 185
    .end local v1    # "b":[B
    :cond_4
    invoke-interface {p6, p0, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static compareKeys([B[BLjava/util/Comparator;)I
    .locals 1
    .param p0, "key1"    # [B
    .param p1, "key2"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B[B",
            "Ljava/util/Comparator<",
            "[B>;)I"
        }
    .end annotation

    .line 194
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<[B>;"
    if-eqz p2, :cond_0

    .line 195
    invoke-interface {p2, p0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 197
    :cond_0
    invoke-static {p0, p1}, Lcom/sleepycat/je/tree/Key;->compareUnsignedBytes([B[B)I

    move-result v0

    return v0
.end method

.method public static compareUnsignedBytes([BII[BII)I
    .locals 6
    .param p0, "key1"    # [B
    .param p1, "off1"    # I
    .param p2, "len1"    # I
    .param p3, "key2"    # [B
    .param p4, "off2"    # I
    .param p5, "len2"    # I

    .line 233
    invoke-static {p2, p5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 235
    .local v0, "limit":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 236
    add-int v2, v1, p1

    aget-byte v2, p0, v2

    .line 237
    .local v2, "b1":B
    add-int v3, v1, p4

    aget-byte v3, p3, v3

    .line 238
    .local v3, "b2":B
    if-ne v2, v3, :cond_0

    .line 239
    nop

    .line 235
    .end local v2    # "b1":B
    .end local v3    # "b2":B
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 246
    .restart local v2    # "b1":B
    .restart local v3    # "b2":B
    :cond_0
    and-int/lit16 v4, v2, 0xff

    and-int/lit16 v5, v3, 0xff

    sub-int/2addr v4, v5

    return v4

    .line 250
    .end local v1    # "i":I
    .end local v2    # "b1":B
    .end local v3    # "b2":B
    :cond_1
    sub-int v1, p2, p5

    return v1
.end method

.method private static compareUnsignedBytes([B[B)I
    .locals 6
    .param p0, "key1"    # [B
    .param p1, "key2"    # [B

    .line 220
    array-length v2, p0

    array-length v5, p1

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p1

    invoke-static/range {v0 .. v5}, Lcom/sleepycat/je/tree/Key;->compareUnsignedBytes([BII[BII)I

    move-result v0

    return v0
.end method

.method public static createKeyPrefix([B[B)[B
    .locals 3
    .param p0, "key1"    # [B
    .param p1, "key2"    # [B

    .line 282
    array-length v0, p0

    invoke-static {p0, v0, p1}, Lcom/sleepycat/je/tree/Key;->getKeyPrefixLength([BI[B)I

    move-result v0

    .line 283
    .local v0, "len":I
    if-nez v0, :cond_0

    .line 284
    const/4 v1, 0x0

    return-object v1

    .line 287
    :cond_0
    new-array v1, v0, [B

    .line 288
    .local v1, "ret":[B
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 290
    return-object v1
.end method

.method public static dumpString([BI)Ljava/lang/String;
    .locals 1
    .param p0, "key"    # [B
    .param p1, "nspaces"    # I

    .line 295
    const-string v0, "key"

    invoke-static {p0, v0, p1}, Lcom/sleepycat/je/tree/Key;->dumpString([BLjava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static dumpString([BLjava/lang/String;I)Ljava/lang/String;
    .locals 3
    .param p0, "key"    # [B
    .param p1, "xmltag"    # Ljava/lang/String;
    .param p2, "nspaces"    # I

    .line 300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 302
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-static {p2}, Lcom/sleepycat/je/tree/TreeUtils;->indent(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    const-string v1, "<"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " v=\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    invoke-static {p0}, Lcom/sleepycat/je/tree/Key;->getNoFormatString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
    const-string v1, "\"/>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 309
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getKeyPrefixLength([BI[B)I
    .locals 5
    .param p0, "key1"    # [B
    .param p1, "a1Len"    # I
    .param p2, "key2"    # [B

    .line 259
    if-eqz p0, :cond_2

    if-eqz p2, :cond_2

    .line 261
    array-length v0, p2

    .line 263
    .local v0, "a2Len":I
    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 265
    .local v1, "limit":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 266
    aget-byte v3, p0, v2

    .line 267
    .local v3, "b1":B
    aget-byte v4, p2, v2

    .line 268
    .local v4, "b2":B
    if-eq v3, v4, :cond_0

    .line 269
    return v2

    .line 265
    .end local v3    # "b1":B
    .end local v4    # "b2":B
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    .end local v2    # "i":I
    :cond_1
    return v1

    .line 259
    .end local v0    # "a2Len":I
    .end local v1    # "limit":I
    :cond_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static getNoFormatString([B)Ljava/lang/String;
    .locals 4
    .param p0, "key"    # [B

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 319
    .local v0, "sb":Ljava/lang/StringBuilder;
    sget-object v1, Lcom/sleepycat/je/tree/Key;->DUMP_TYPE:Lcom/sleepycat/je/tree/Key$DumpType;

    sget-object v2, Lcom/sleepycat/je/tree/Key$DumpType;->BINARY:Lcom/sleepycat/je/tree/Key$DumpType;

    const-string v3, "<null>"

    if-eq v1, v2, :cond_5

    sget-object v1, Lcom/sleepycat/je/tree/Key;->DUMP_TYPE:Lcom/sleepycat/je/tree/Key$DumpType;

    sget-object v2, Lcom/sleepycat/je/tree/Key$DumpType;->HEX:Lcom/sleepycat/je/tree/Key$DumpType;

    if-ne v1, v2, :cond_0

    goto :goto_2

    .line 326
    :cond_0
    sget-object v1, Lcom/sleepycat/je/tree/Key;->DUMP_TYPE:Lcom/sleepycat/je/tree/Key$DumpType;

    sget-object v2, Lcom/sleepycat/je/tree/Key$DumpType;->TEXT:Lcom/sleepycat/je/tree/Key$DumpType;

    if-ne v1, v2, :cond_2

    .line 327
    if-nez p0, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/sleepycat/utilint/StringUtils;->fromUTF8([B)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 328
    :cond_2
    sget-object v1, Lcom/sleepycat/je/tree/Key;->DUMP_TYPE:Lcom/sleepycat/je/tree/Key$DumpType;

    sget-object v2, Lcom/sleepycat/je/tree/Key$DumpType;->OBFUSCATE:Lcom/sleepycat/je/tree/Key$DumpType;

    if-ne v1, v2, :cond_7

    .line 329
    if-nez p0, :cond_3

    .line 330
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 332
    :cond_3
    array-length v1, p0

    .line 333
    .local v1, "len":I
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 334
    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    const-string v2, " byte]"

    goto :goto_1

    :cond_4
    const-string v2, " bytes]"

    :goto_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 321
    .end local v1    # "len":I
    :cond_5
    :goto_2
    if-nez p0, :cond_6

    .line 322
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 324
    :cond_6
    sget-object v1, Lcom/sleepycat/je/tree/Key;->DUMP_TYPE:Lcom/sleepycat/je/tree/Key$DumpType;

    invoke-virtual {v1, p0}, Lcom/sleepycat/je/tree/Key$DumpType;->dumpByteArray([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    :cond_7
    :goto_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static makeKey(Lcom/sleepycat/je/DatabaseEntry;)[B
    .locals 5
    .param p0, "dbt"    # Lcom/sleepycat/je/DatabaseEntry;

    .line 112
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getData()[B

    move-result-object v0

    .line 113
    .local v0, "entryKey":[B
    if-nez v0, :cond_0

    .line 114
    sget-object v1, Lcom/sleepycat/je/tree/Key;->EMPTY_KEY:[B

    return-object v1

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v1

    new-array v1, v1, [B

    .line 117
    .local v1, "newKey":[B
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getOffset()I

    move-result v2

    const/4 v3, 0x0

    .line 118
    invoke-virtual {p0}, Lcom/sleepycat/je/DatabaseEntry;->getSize()I

    move-result v4

    .line 117
    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 119
    return-object v1
.end method


# virtual methods
.method public compareTo(Lcom/sleepycat/je/tree/Key;)I
    .locals 2
    .param p1, "argKey"    # Lcom/sleepycat/je/tree/Key;

    .line 138
    iget-object v0, p0, Lcom/sleepycat/je/tree/Key;->key:[B

    iget-object v1, p1, Lcom/sleepycat/je/tree/Key;->key:[B

    invoke-static {v0, v1}, Lcom/sleepycat/je/tree/Key;->compareUnsignedBytes([B[B)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 30
    check-cast p1, Lcom/sleepycat/je/tree/Key;

    invoke-virtual {p0, p1}, Lcom/sleepycat/je/tree/Key;->compareTo(Lcom/sleepycat/je/tree/Key;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 146
    instance-of v0, p1, Lcom/sleepycat/je/tree/Key;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/sleepycat/je/tree/Key;

    invoke-virtual {p0, v0}, Lcom/sleepycat/je/tree/Key;->compareTo(Lcom/sleepycat/je/tree/Key;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getKey()[B
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/sleepycat/je/tree/Key;->key:[B

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .line 154
    const/4 v0, 0x0

    .line 155
    .local v0, "code":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/je/tree/Key;->key:[B

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 156
    aget-byte v2, v2, v1

    add-int/2addr v0, v2

    .line 155
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 158
    .end local v1    # "i":I
    :cond_0
    return v0
.end method
