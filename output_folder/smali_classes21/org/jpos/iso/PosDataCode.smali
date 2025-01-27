.class public Lorg/jpos/iso/PosDataCode;
.super Ljava/lang/Object;
.source "PosDataCode.java"

# interfaces
.implements Lorg/jpos/util/Loggeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;,
        Lorg/jpos/iso/PosDataCode$POSEnvironment;,
        Lorg/jpos/iso/PosDataCode$VerificationMethod;,
        Lorg/jpos/iso/PosDataCode$ReadingMethod;,
        Lorg/jpos/iso/PosDataCode$Flag;
    }
.end annotation


# instance fields
.field private b:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jpos/iso/PosDataCode;->b:[B

    .line 176
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 3
    .param p1, "readingMethod"    # I
    .param p2, "verificationMethod"    # I
    .param p3, "posEnvironment"    # I
    .param p4, "securityCharacteristic"    # I

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/jpos/iso/PosDataCode;->b:[B

    .line 186
    int-to-byte v1, p1

    const/4 v2, 0x0

    aput-byte v1, v0, v2

    .line 187
    ushr-int/lit8 v1, p1, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x1

    aput-byte v1, v0, v2

    .line 188
    ushr-int/lit8 v1, p1, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x2

    aput-byte v1, v0, v2

    .line 189
    ushr-int/lit8 v1, p1, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x3

    aput-byte v1, v0, v2

    .line 191
    int-to-byte v1, p2

    const/4 v2, 0x4

    aput-byte v1, v0, v2

    .line 192
    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    const/4 v2, 0x5

    aput-byte v1, v0, v2

    .line 193
    ushr-int/lit8 v1, p2, 0x10

    int-to-byte v1, v1

    const/4 v2, 0x6

    aput-byte v1, v0, v2

    .line 194
    ushr-int/lit8 v1, p2, 0x18

    int-to-byte v1, v1

    const/4 v2, 0x7

    aput-byte v1, v0, v2

    .line 196
    int-to-byte v1, p3

    const/16 v2, 0x8

    aput-byte v1, v0, v2

    .line 197
    ushr-int/lit8 v1, p3, 0x8

    int-to-byte v1, v1

    const/16 v2, 0x9

    aput-byte v1, v0, v2

    .line 198
    ushr-int/lit8 v1, p3, 0x10

    int-to-byte v1, v1

    const/16 v2, 0xa

    aput-byte v1, v0, v2

    .line 199
    ushr-int/lit8 v1, p3, 0x18

    int-to-byte v1, v1

    const/16 v2, 0xb

    aput-byte v1, v0, v2

    .line 201
    int-to-byte v1, p4

    const/16 v2, 0xc

    aput-byte v1, v0, v2

    .line 202
    ushr-int/lit8 v1, p4, 0x8

    int-to-byte v1, v1

    const/16 v2, 0xd

    aput-byte v1, v0, v2

    .line 203
    ushr-int/lit8 v1, p4, 0x10

    int-to-byte v1, v1

    const/16 v2, 0xe

    aput-byte v1, v0, v2

    .line 204
    ushr-int/lit8 v1, p4, 0x18

    int-to-byte v1, v1

    const/16 v2, 0xf

    aput-byte v1, v0, v2

    .line 205
    return-void
.end method

.method private constructor <init>([B)V
    .locals 3
    .param p1, "b"    # [B

    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const/16 v0, 0x10

    new-array v1, v0, [B

    iput-object v1, p0, Lorg/jpos/iso/PosDataCode;->b:[B

    .line 208
    if-eqz p1, :cond_0

    .line 210
    array-length v1, p1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 211
    .local v0, "copyLen":I
    iget-object v1, p0, Lorg/jpos/iso/PosDataCode;->b:[B

    const/4 v2, 0x0

    invoke-static {p1, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 213
    .end local v0    # "copyLen":I
    :cond_0
    return-void
.end method

.method public static valueOf([B)Lorg/jpos/iso/PosDataCode;
    .locals 1
    .param p0, "b"    # [B

    .line 266
    new-instance v0, Lorg/jpos/iso/PosDataCode;

    invoke-direct {v0, p0}, Lorg/jpos/iso/PosDataCode;-><init>([B)V

    return-object v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 11
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    .local v0, "inner":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .local v1, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-virtual {p0}, Lorg/jpos/iso/PosDataCode;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    aput-object v4, v2, v5

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x2

    aput-object v4, v2, v6

    const-string v4, "%s<pdc value=\'%s\'>%s%n"

    invoke-virtual {p1, v4, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 273
    invoke-static {}, Lorg/jpos/iso/PosDataCode$ReadingMethod;->values()[Lorg/jpos/iso/PosDataCode$ReadingMethod;

    move-result-object v2

    array-length v4, v2

    move v7, v3

    :goto_0
    const/16 v8, 0x2c

    if-ge v7, v4, :cond_2

    aget-object v9, v2, v7

    .line 274
    .local v9, "m":Lorg/jpos/iso/PosDataCode$ReadingMethod;
    invoke-virtual {p0, v9}, Lorg/jpos/iso/PosDataCode;->hasReadingMethod(Lorg/jpos/iso/PosDataCode$ReadingMethod;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 275
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 276
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 277
    :cond_0
    invoke-virtual {v9}, Lorg/jpos/iso/PosDataCode$ReadingMethod;->name()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .end local v9    # "m":Lorg/jpos/iso/PosDataCode$ReadingMethod;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 280
    :cond_2
    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    const-string v4, "%srm: %s%n"

    invoke-virtual {p1, v4, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 282
    invoke-static {}, Lorg/jpos/iso/PosDataCode$VerificationMethod;->values()[Lorg/jpos/iso/PosDataCode$VerificationMethod;

    move-result-object v2

    array-length v4, v2

    move v7, v3

    :goto_1
    if-ge v7, v4, :cond_5

    aget-object v9, v2, v7

    .line 283
    .local v9, "m":Lorg/jpos/iso/PosDataCode$VerificationMethod;
    invoke-virtual {p0, v9}, Lorg/jpos/iso/PosDataCode;->hasVerificationMethod(Lorg/jpos/iso/PosDataCode$VerificationMethod;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 284
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 285
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 286
    :cond_3
    invoke-virtual {v9}, Lorg/jpos/iso/PosDataCode$VerificationMethod;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .end local v9    # "m":Lorg/jpos/iso/PosDataCode$VerificationMethod;
    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 289
    :cond_5
    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    const-string v4, "%svm: %s%n"

    invoke-virtual {p1, v4, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 290
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 291
    invoke-static {}, Lorg/jpos/iso/PosDataCode$POSEnvironment;->values()[Lorg/jpos/iso/PosDataCode$POSEnvironment;

    move-result-object v2

    array-length v4, v2

    move v7, v3

    :goto_2
    if-ge v7, v4, :cond_8

    aget-object v9, v2, v7

    .line 292
    .local v9, "m":Lorg/jpos/iso/PosDataCode$POSEnvironment;
    invoke-virtual {p0, v9}, Lorg/jpos/iso/PosDataCode;->hasPosEnvironment(Lorg/jpos/iso/PosDataCode$POSEnvironment;)Z

    move-result v10

    if-eqz v10, :cond_7

    .line 293
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_6

    .line 294
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 295
    :cond_6
    invoke-virtual {v9}, Lorg/jpos/iso/PosDataCode$POSEnvironment;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 291
    .end local v9    # "m":Lorg/jpos/iso/PosDataCode$POSEnvironment;
    :cond_7
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 298
    :cond_8
    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v5

    const-string v4, "%spe: %s%n"

    invoke-virtual {p1, v4, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v2

    .line 300
    invoke-static {}, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->values()[Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    move-result-object v2

    array-length v4, v2

    move v7, v3

    :goto_3
    if-ge v7, v4, :cond_b

    aget-object v9, v2, v7

    .line 301
    .local v9, "m":Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;
    invoke-virtual {p0, v9}, Lorg/jpos/iso/PosDataCode;->hasSecurityCharacteristic(Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 302
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v10

    if-lez v10, :cond_9

    .line 303
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 304
    :cond_9
    invoke-virtual {v9}, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->name()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 300
    .end local v9    # "m":Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;
    :cond_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 307
    :cond_b
    new-array v2, v6, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    const-string v3, "%ssc: %s%n"

    invoke-virtual {p1, v3, v2}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 308
    const-string v2, "</pdc>"

    invoke-virtual {p1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 309
    return-void
.end method

.method public getBytes()[B
    .locals 1

    .line 244
    iget-object v0, p0, Lorg/jpos/iso/PosDataCode;->b:[B

    return-object v0
.end method

.method public hasPosEnvironment(Lorg/jpos/iso/PosDataCode$POSEnvironment;)Z
    .locals 1
    .param p1, "method"    # Lorg/jpos/iso/PosDataCode$POSEnvironment;

    .line 234
    invoke-virtual {p1}, Lorg/jpos/iso/PosDataCode$POSEnvironment;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jpos/iso/PosDataCode;->hasPosEnvironments(I)Z

    move-result v0

    return v0
.end method

.method public hasPosEnvironments(I)Z
    .locals 5
    .param p1, "posEnvironments"    # I

    .line 230
    iget-object v0, p0, Lorg/jpos/iso/PosDataCode;->b:[B

    const/16 v1, 0xb

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x18

    const/16 v2, 0xa

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/16 v2, 0x9

    aget-byte v2, v0, v2

    const/16 v3, 0x8

    shl-int/2addr v2, v3

    const v4, 0xff00

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    .line 231
    .local v0, "i":I
    and-int v1, v0, p1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasReadingMethod(Lorg/jpos/iso/PosDataCode$ReadingMethod;)Z
    .locals 1
    .param p1, "method"    # Lorg/jpos/iso/PosDataCode$ReadingMethod;

    .line 220
    invoke-virtual {p1}, Lorg/jpos/iso/PosDataCode$ReadingMethod;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jpos/iso/PosDataCode;->hasReadingMethods(I)Z

    move-result v0

    return v0
.end method

.method public hasReadingMethods(I)Z
    .locals 5
    .param p1, "readingMethods"    # I

    .line 216
    iget-object v0, p0, Lorg/jpos/iso/PosDataCode;->b:[B

    const/4 v1, 0x3

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/4 v2, 0x1

    aget-byte v3, v0, v2

    shl-int/lit8 v3, v3, 0x8

    const v4, 0xff00

    and-int/2addr v3, v4

    or-int/2addr v1, v3

    const/4 v3, 0x0

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    .line 217
    .local v0, "i":I
    and-int v1, v0, p1

    if-ne v1, p1, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    return v2
.end method

.method public hasSecurityCharacteristic(Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;)Z
    .locals 1
    .param p1, "characteristic"    # Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    .line 241
    invoke-virtual {p1}, Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jpos/iso/PosDataCode;->hasSecurityCharacteristics(I)Z

    move-result v0

    return v0
.end method

.method public hasSecurityCharacteristics(I)Z
    .locals 4
    .param p1, "securityCharacteristics"    # I

    .line 237
    iget-object v0, p0, Lorg/jpos/iso/PosDataCode;->b:[B

    const/16 v1, 0xf

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x18

    const/16 v2, 0xe

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/16 v2, 0xd

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/16 v2, 0xc

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    .line 238
    .local v0, "i":I
    and-int v1, v0, p1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public hasVerificationMethod(Lorg/jpos/iso/PosDataCode$VerificationMethod;)Z
    .locals 1
    .param p1, "method"    # Lorg/jpos/iso/PosDataCode$VerificationMethod;

    .line 227
    invoke-virtual {p1}, Lorg/jpos/iso/PosDataCode$VerificationMethod;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jpos/iso/PosDataCode;->hasVerificationMethods(I)Z

    move-result v0

    return v0
.end method

.method public hasVerificationMethods(I)Z
    .locals 4
    .param p1, "verificationMethods"    # I

    .line 223
    iget-object v0, p0, Lorg/jpos/iso/PosDataCode;->b:[B

    const/4 v1, 0x7

    aget-byte v1, v0, v1

    shl-int/lit8 v1, v1, 0x18

    const/4 v2, 0x6

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x10

    const/high16 v3, 0xff0000

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/4 v2, 0x5

    aget-byte v2, v0, v2

    shl-int/lit8 v2, v2, 0x8

    const v3, 0xff00

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    const/4 v2, 0x4

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v1

    .line 224
    .local v0, "i":I
    and-int v1, v0, p1

    if-ne v1, p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isECommerce()Z
    .locals 1

    .line 259
    sget-object v0, Lorg/jpos/iso/PosDataCode$POSEnvironment;->E_COMMERCE:Lorg/jpos/iso/PosDataCode$POSEnvironment;

    invoke-virtual {p0, v0}, Lorg/jpos/iso/PosDataCode;->hasPosEnvironment(Lorg/jpos/iso/PosDataCode$POSEnvironment;)Z

    move-result v0

    return v0
.end method

.method public isEMV()Z
    .locals 1

    .line 247
    sget-object v0, Lorg/jpos/iso/PosDataCode$ReadingMethod;->ICC:Lorg/jpos/iso/PosDataCode$ReadingMethod;

    invoke-virtual {p0, v0}, Lorg/jpos/iso/PosDataCode;->hasReadingMethod(Lorg/jpos/iso/PosDataCode$ReadingMethod;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lorg/jpos/iso/PosDataCode$ReadingMethod;->CONTACTLESS:Lorg/jpos/iso/PosDataCode$ReadingMethod;

    invoke-virtual {p0, v0}, Lorg/jpos/iso/PosDataCode;->hasReadingMethod(Lorg/jpos/iso/PosDataCode$ReadingMethod;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isManualEntry()Z
    .locals 1

    .line 250
    sget-object v0, Lorg/jpos/iso/PosDataCode$ReadingMethod;->PHYSICAL:Lorg/jpos/iso/PosDataCode$ReadingMethod;

    invoke-virtual {p0, v0}, Lorg/jpos/iso/PosDataCode;->hasReadingMethod(Lorg/jpos/iso/PosDataCode$ReadingMethod;)Z

    move-result v0

    return v0
.end method

.method public isRecurring()Z
    .locals 1

    .line 256
    sget-object v0, Lorg/jpos/iso/PosDataCode$POSEnvironment;->RECURRING:Lorg/jpos/iso/PosDataCode$POSEnvironment;

    invoke-virtual {p0, v0}, Lorg/jpos/iso/PosDataCode;->hasPosEnvironment(Lorg/jpos/iso/PosDataCode$POSEnvironment;)Z

    move-result v0

    return v0
.end method

.method public isSwiped()Z
    .locals 1

    .line 253
    sget-object v0, Lorg/jpos/iso/PosDataCode$ReadingMethod;->MAGNETIC_STRIPE:Lorg/jpos/iso/PosDataCode$ReadingMethod;

    invoke-virtual {p0, v0}, Lorg/jpos/iso/PosDataCode;->hasReadingMethod(Lorg/jpos/iso/PosDataCode$ReadingMethod;)Z

    move-result v0

    return v0
.end method

.method public varargs setFlags(Z[Lorg/jpos/iso/PosDataCode$Flag;)V
    .locals 8
    .param p1, "value"    # Z
    .param p2, "flags"    # [Lorg/jpos/iso/PosDataCode$Flag;

    .line 318
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 319
    array-length v1, p2

    :goto_0
    if-ge v0, v1, :cond_3

    aget-object v2, p2, v0

    .line 320
    .local v2, "flag":Lorg/jpos/iso/PosDataCode$Flag;
    invoke-interface {v2}, Lorg/jpos/iso/PosDataCode$Flag;->intValue()I

    move-result v3

    .local v3, "v":I
    invoke-interface {v2}, Lorg/jpos/iso/PosDataCode$Flag;->getOffset()I

    move-result v4

    .local v4, "offset":I
    :goto_1
    if-eqz v3, :cond_0

    .line 321
    iget-object v5, p0, Lorg/jpos/iso/PosDataCode;->b:[B

    aget-byte v6, v5, v4

    int-to-byte v7, v3

    or-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 320
    ushr-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 319
    .end local v2    # "flag":Lorg/jpos/iso/PosDataCode$Flag;
    .end local v3    # "v":I
    .end local v4    # "offset":I
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 325
    :cond_1
    array-length v1, p2

    :goto_2
    if-ge v0, v1, :cond_3

    aget-object v2, p2, v0

    .line 326
    .restart local v2    # "flag":Lorg/jpos/iso/PosDataCode$Flag;
    invoke-interface {v2}, Lorg/jpos/iso/PosDataCode$Flag;->intValue()I

    move-result v3

    .restart local v3    # "v":I
    invoke-interface {v2}, Lorg/jpos/iso/PosDataCode$Flag;->getOffset()I

    move-result v4

    .restart local v4    # "offset":I
    :goto_3
    if-eqz v3, :cond_2

    .line 327
    iget-object v5, p0, Lorg/jpos/iso/PosDataCode;->b:[B

    aget-byte v6, v5, v4

    not-int v7, v3

    int-to-byte v7, v7

    and-int/2addr v6, v7

    int-to-byte v6, v6

    aput-byte v6, v5, v4

    .line 326
    ushr-int/lit8 v3, v3, 0x8

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 325
    .end local v2    # "flag":Lorg/jpos/iso/PosDataCode$Flag;
    .end local v3    # "v":I
    .end local v4    # "offset":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 332
    :cond_3
    return-void
.end method

.method public varargs setPOSEnvironments(Z[Lorg/jpos/iso/PosDataCode$POSEnvironment;)V
    .locals 0
    .param p1, "value"    # Z
    .param p2, "envs"    # [Lorg/jpos/iso/PosDataCode$POSEnvironment;

    .line 359
    invoke-virtual {p0, p1, p2}, Lorg/jpos/iso/PosDataCode;->setFlags(Z[Lorg/jpos/iso/PosDataCode$Flag;)V

    .line 360
    return-void
.end method

.method public varargs setPOSEnvironments([Lorg/jpos/iso/PosDataCode$POSEnvironment;)V
    .locals 1
    .param p1, "envs"    # [Lorg/jpos/iso/PosDataCode$POSEnvironment;

    .line 367
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/jpos/iso/PosDataCode;->setPOSEnvironments(Z[Lorg/jpos/iso/PosDataCode$POSEnvironment;)V

    .line 368
    return-void
.end method

.method public varargs setReadingMethods(Z[Lorg/jpos/iso/PosDataCode$ReadingMethod;)V
    .locals 0
    .param p1, "value"    # Z
    .param p2, "methods"    # [Lorg/jpos/iso/PosDataCode$ReadingMethod;

    .line 335
    invoke-virtual {p0, p1, p2}, Lorg/jpos/iso/PosDataCode;->setFlags(Z[Lorg/jpos/iso/PosDataCode$Flag;)V

    .line 336
    return-void
.end method

.method public varargs setReadingMethods([Lorg/jpos/iso/PosDataCode$ReadingMethod;)V
    .locals 1
    .param p1, "methods"    # [Lorg/jpos/iso/PosDataCode$ReadingMethod;

    .line 343
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/jpos/iso/PosDataCode;->setReadingMethods(Z[Lorg/jpos/iso/PosDataCode$ReadingMethod;)V

    .line 344
    return-void
.end method

.method public varargs setSecurityCharacteristics(Z[Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;)V
    .locals 0
    .param p1, "value"    # Z
    .param p2, "securityCharacteristics"    # [Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    .line 371
    invoke-virtual {p0, p1, p2}, Lorg/jpos/iso/PosDataCode;->setFlags(Z[Lorg/jpos/iso/PosDataCode$Flag;)V

    .line 372
    return-void
.end method

.method public varargs setSecurityCharacteristics([Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;)V
    .locals 1
    .param p1, "envs"    # [Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    .line 379
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/jpos/iso/PosDataCode;->setSecurityCharacteristics(Z[Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;)V

    .line 380
    return-void
.end method

.method public varargs setVerificationMethods(Z[Lorg/jpos/iso/PosDataCode$VerificationMethod;)V
    .locals 0
    .param p1, "value"    # Z
    .param p2, "methods"    # [Lorg/jpos/iso/PosDataCode$VerificationMethod;

    .line 347
    invoke-virtual {p0, p1, p2}, Lorg/jpos/iso/PosDataCode;->setFlags(Z[Lorg/jpos/iso/PosDataCode$Flag;)V

    .line 348
    return-void
.end method

.method public varargs setVerificationMethods([Lorg/jpos/iso/PosDataCode$VerificationMethod;)V
    .locals 1
    .param p1, "methods"    # [Lorg/jpos/iso/PosDataCode$VerificationMethod;

    .line 355
    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Lorg/jpos/iso/PosDataCode;->setVerificationMethods(Z[Lorg/jpos/iso/PosDataCode$VerificationMethod;)V

    .line 356
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jpos/iso/PosDataCode;->getBytes()[B

    move-result-object v1

    invoke-static {v1}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public varargs unsetPOSEnvironments([Lorg/jpos/iso/PosDataCode$POSEnvironment;)V
    .locals 1
    .param p1, "envs"    # [Lorg/jpos/iso/PosDataCode$POSEnvironment;

    .line 363
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/jpos/iso/PosDataCode;->setPOSEnvironments(Z[Lorg/jpos/iso/PosDataCode$POSEnvironment;)V

    .line 364
    return-void
.end method

.method public varargs unsetReadingMethods([Lorg/jpos/iso/PosDataCode$ReadingMethod;)V
    .locals 1
    .param p1, "methods"    # [Lorg/jpos/iso/PosDataCode$ReadingMethod;

    .line 339
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/jpos/iso/PosDataCode;->setReadingMethods(Z[Lorg/jpos/iso/PosDataCode$ReadingMethod;)V

    .line 340
    return-void
.end method

.method public varargs unsetSecurityCharacteristics([Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;)V
    .locals 1
    .param p1, "envs"    # [Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;

    .line 375
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/jpos/iso/PosDataCode;->setSecurityCharacteristics(Z[Lorg/jpos/iso/PosDataCode$SecurityCharacteristic;)V

    .line 376
    return-void
.end method

.method public varargs unsetVerificationMethods([Lorg/jpos/iso/PosDataCode$VerificationMethod;)V
    .locals 1
    .param p1, "methods"    # [Lorg/jpos/iso/PosDataCode$VerificationMethod;

    .line 351
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/jpos/iso/PosDataCode;->setVerificationMethods(Z[Lorg/jpos/iso/PosDataCode$VerificationMethod;)V

    .line 352
    return-void
.end method
