.class public Lorg/jpos/core/CardHolder;
.super Ljava/lang/Object;
.source "CardHolder.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;
.implements Lorg/jpos/util/Loggeable;


# static fields
.field private static final BINLEN:I = 0x6

.field private static final MINPANLEN:I = 0xa

.field private static final TRACK1_SEPARATOR:Ljava/lang/String; = "^"

.field private static final TRACK2_SEPARATOR:C = '='

.field private static final serialVersionUID:J = 0x6762e6e9d228c923L


# instance fields
.field protected exp:Ljava/lang/String;

.field protected pan:Ljava/lang/String;

.field protected securityCode:Ljava/lang/String;

.field protected track1:Ljava/lang/String;

.field protected trailer:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "track2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/InvalidCardException;
        }
    .end annotation

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    invoke-virtual {p0, p1}, Lorg/jpos/core/CardHolder;->parseTrack2(Ljava/lang/String;)V

    .line 87
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "pan"    # Ljava/lang/String;
    .param p2, "exp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/InvalidCardException;
        }
    .end annotation

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    invoke-virtual {p0, p1}, Lorg/jpos/core/CardHolder;->setPAN(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, p2}, Lorg/jpos/core/CardHolder;->setEXP(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Lorg/jpos/iso/ISOMsg;)V
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/InvalidCardException;
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 112
    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOMsg;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/jpos/core/CardHolder;->parseTrack2(Ljava/lang/String;)V

    goto :goto_0

    .line 113
    :cond_0
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 114
    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOMsg;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/jpos/core/CardHolder;->setPAN(Ljava/lang/String;)V

    .line 115
    const/16 v0, 0xe

    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 116
    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOMsg;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/jpos/core/CardHolder;->setEXP(Ljava/lang/String;)V

    .line 120
    :cond_1
    :goto_0
    const/16 v0, 0x2d

    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 121
    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOMsg;->getValue(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/jpos/core/CardHolder;->setTrack1(Ljava/lang/String;)V

    .line 123
    :cond_2
    const/16 v0, 0x37

    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOMsg;->hasField(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 124
    invoke-virtual {p1, v0}, Lorg/jpos/iso/ISOMsg;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/core/CardHolder;->setSecurityCode(Ljava/lang/String;)V

    .line 126
    :cond_3
    return-void

    .line 118
    :cond_4
    new-instance v0, Lorg/jpos/core/InvalidCardException;

    const-string v1, "required fields not present"

    invoke-direct {v0, v1}, Lorg/jpos/core/InvalidCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isValidCRC(Ljava/lang/String;)Z
    .locals 7
    .param p0, "p"    # Ljava/lang/String;

    .line 330
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    .line 332
    .local v0, "odd":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "crc":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_3

    .line 333
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 334
    .local v4, "c":C
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v5

    if-nez v5, :cond_0

    .line 335
    return v1

    .line 336
    :cond_0
    add-int/lit8 v5, v4, -0x30

    int-to-char v4, v5

    .line 337
    rem-int/lit8 v5, v3, 0x2

    if-ne v5, v0, :cond_2

    .line 338
    mul-int/lit8 v5, v4, 0x2

    const/16 v6, 0xa

    if-lt v5, v6, :cond_1

    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, -0x9

    goto :goto_1

    :cond_1
    mul-int/lit8 v5, v4, 0x2

    :goto_1
    add-int/2addr v2, v5

    goto :goto_2

    .line 340
    :cond_2
    add-int/2addr v2, v4

    .line 332
    .end local v4    # "c":C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 342
    :cond_3
    rem-int/lit8 v4, v2, 0xa

    if-nez v4, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method


# virtual methods
.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 2
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "<CardHolder"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 355
    invoke-virtual {p0}, Lorg/jpos/core/CardHolder;->hasTrack1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 356
    const-string v0, " trk1=\"true\""

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 358
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/core/CardHolder;->hasTrack2()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 359
    const-string v0, " trk2=\"true\""

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 361
    :cond_1
    invoke-virtual {p0}, Lorg/jpos/core/CardHolder;->hasSecurityCode()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 362
    const-string v0, " sec=\"true\""

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 364
    :cond_2
    invoke-virtual {p0}, Lorg/jpos/core/CardHolder;->isExpired()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 365
    const-string v0, " expired=\"true\""

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 367
    :cond_3
    const-string v0, ">"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 368
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  <pan>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/core/CardHolder;->pan:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</pan>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 369
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  <exp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/core/CardHolder;->exp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</exp>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</CardHolder>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 371
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .line 396
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 397
    return v0

    .line 398
    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 399
    return v1

    .line 400
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    .line 401
    return v1

    .line 402
    :cond_2
    move-object v2, p1

    check-cast v2, Lorg/jpos/core/CardHolder;

    .line 403
    .local v2, "other":Lorg/jpos/core/CardHolder;
    iget-object v3, p0, Lorg/jpos/core/CardHolder;->exp:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 404
    iget-object v3, v2, Lorg/jpos/core/CardHolder;->exp:Ljava/lang/String;

    if-eqz v3, :cond_4

    .line 405
    return v1

    .line 406
    :cond_3
    iget-object v4, v2, Lorg/jpos/core/CardHolder;->exp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 407
    return v1

    .line 408
    :cond_4
    iget-object v3, p0, Lorg/jpos/core/CardHolder;->pan:Ljava/lang/String;

    if-nez v3, :cond_5

    .line 409
    iget-object v3, v2, Lorg/jpos/core/CardHolder;->pan:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 410
    return v1

    .line 411
    :cond_5
    iget-object v4, v2, Lorg/jpos/core/CardHolder;->pan:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 412
    return v1

    .line 413
    :cond_6
    return v0
.end method

.method public getBIN()Ljava/lang/String;
    .locals 3

    .line 270
    iget-object v0, p0, Lorg/jpos/core/CardHolder;->pan:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEXP()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/jpos/core/CardHolder;->exp:Ljava/lang/String;

    return-object v0
.end method

.method public getNameOnCard()Ljava/lang/String;
    .locals 4

    .line 172
    const/4 v0, 0x0

    .line 173
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lorg/jpos/core/CardHolder;->track1:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 174
    new-instance v1, Ljava/util/StringTokenizer;

    iget-object v2, p0, Lorg/jpos/core/CardHolder;->track1:Ljava/lang/String;

    const-string v3, "^"

    invoke-direct {v1, v2, v3}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .local v1, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_0

    .line 177
    const/4 v2, 0x0

    return-object v2

    .line 178
    :cond_0
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 179
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 181
    .end local v1    # "st":Ljava/util/StringTokenizer;
    :cond_1
    return-object v0
.end method

.method public getPAN()Ljava/lang/String;
    .locals 1

    .line 262
    iget-object v0, p0, Lorg/jpos/core/CardHolder;->pan:Ljava/lang/String;

    return-object v0
.end method

.method public getSecurityCode()Ljava/lang/String;
    .locals 1

    .line 211
    iget-object v0, p0, Lorg/jpos/core/CardHolder;->securityCode:Ljava/lang/String;

    return-object v0
.end method

.method public getServiceCode()Ljava/lang/String;
    .locals 3

    .line 377
    iget-object v0, p0, Lorg/jpos/core/CardHolder;->trailer:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lorg/jpos/core/CardHolder;->trailer:Ljava/lang/String;

    const/4 v2, 0x0

    .line 378
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "   "

    .line 377
    :goto_0
    return-object v0
.end method

.method public getTrack1()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lorg/jpos/core/CardHolder;->track1:Ljava/lang/String;

    return-object v0
.end method

.method public getTrack2()Ljava/lang/String;
    .locals 2

    .line 188
    invoke-virtual {p0}, Lorg/jpos/core/CardHolder;->hasTrack2()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/jpos/core/CardHolder;->pan:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/core/CardHolder;->exp:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/core/CardHolder;->trailer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 191
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getTrailer()Ljava/lang/String;
    .locals 1

    .line 238
    iget-object v0, p0, Lorg/jpos/core/CardHolder;->trailer:Ljava/lang/String;

    return-object v0
.end method

.method public getTrailler()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lorg/jpos/core/CardHolder;->trailer:Ljava/lang/String;

    return-object v0
.end method

.method public hasSecurityCode()Z
    .locals 1

    .line 217
    iget-object v0, p0, Lorg/jpos/core/CardHolder;->securityCode:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTrack1()Z
    .locals 1

    .line 165
    iget-object v0, p0, Lorg/jpos/core/CardHolder;->track1:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasTrack2()Z
    .locals 1

    .line 197
    iget-object v0, p0, Lorg/jpos/core/CardHolder;->pan:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jpos/core/CardHolder;->exp:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jpos/core/CardHolder;->trailer:Ljava/lang/String;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 5

    .line 387
    const/16 v0, 0x1f

    .line 388
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 389
    .local v1, "result":I
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/jpos/core/CardHolder;->exp:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    .line 390
    .end local v1    # "result":I
    .local v2, "result":I
    mul-int/lit8 v1, v2, 0x1f

    iget-object v3, p0, Lorg/jpos/core/CardHolder;->pan:Ljava/lang/String;

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    :goto_1
    add-int/2addr v1, v4

    .line 391
    .end local v2    # "result":I
    .restart local v1    # "result":I
    return v1
.end method

.method public isExpired()Z
    .locals 1

    .line 299
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {p0, v0}, Lorg/jpos/core/CardHolder;->isExpired(Ljava/util/Date;)Z

    move-result v0

    return v0
.end method

.method public isExpired(Ljava/util/Date;)Z
    .locals 7
    .param p1, "currentDate"    # Ljava/util/Date;

    .line 308
    iget-object v0, p0, Lorg/jpos/core/CardHolder;->exp:Ljava/lang/String;

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_2

    .line 310
    :cond_0
    const-string v0, "yyyyMM"

    invoke-static {p1, v0}, Lorg/jpos/iso/ISODate;->formatDate(Ljava/util/Date;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, "now":Ljava/lang/String;
    :try_start_0
    iget-object v2, p0, Lorg/jpos/core/CardHolder;->exp:Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 313
    .local v2, "mm":I
    iget-object v4, p0, Lorg/jpos/core/CardHolder;->exp:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 314
    .local v3, "aa":I
    const/16 v4, 0x64

    if-ge v3, v4, :cond_2

    if-lez v2, :cond_2

    const/16 v4, 0xc

    if-gt v2, v4, :cond_2

    .line 315
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v6, 0x46

    if-ge v3, v6, :cond_1

    const-string v6, "20"

    goto :goto_0

    :cond_1
    const-string v6, "19"

    :goto_0
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, p0, Lorg/jpos/core/CardHolder;->exp:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 316
    .local v4, "expDate":Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz v6, :cond_2

    .line 317
    return v5

    .line 321
    .end local v2    # "mm":I
    .end local v3    # "aa":I
    .end local v4    # "expDate":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 319
    :catch_0
    move-exception v2

    .line 322
    :goto_1
    return v1

    .line 309
    .end local v0    # "now":Ljava/lang/String;
    :cond_3
    :goto_2
    return v1
.end method

.method public isValidCRC()Z
    .locals 1

    .line 325
    iget-object v0, p0, Lorg/jpos/core/CardHolder;->pan:Ljava/lang/String;

    invoke-static {v0}, Lorg/jpos/core/CardHolder;->isValidCRC(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public parseTrack2(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/InvalidCardException;
        }
    .end annotation

    .line 136
    if-eqz p1, :cond_1

    .line 138
    const/16 v0, 0x44

    const/16 v1, 0x3d

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 139
    .local v0, "separatorIndex":I
    if-lez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v2, v0, 0x4

    if-le v1, v2, :cond_0

    .line 140
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/core/CardHolder;->pan:Ljava/lang/String;

    .line 141
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x4

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/core/CardHolder;->exp:Ljava/lang/String;

    .line 142
    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v1, v1, 0x4

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/core/CardHolder;->trailer:Ljava/lang/String;

    .line 145
    return-void

    .line 144
    :cond_0
    new-instance v1, Lorg/jpos/core/InvalidCardException;

    const-string v2, "Invalid track2 format"

    invoke-direct {v1, v2}, Lorg/jpos/core/InvalidCardException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 137
    .end local v0    # "separatorIndex":I
    :cond_1
    new-instance v0, Lorg/jpos/core/InvalidCardException;

    const-string v1, "null track2 data"

    invoke-direct {v0, v1}, Lorg/jpos/core/InvalidCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public seemsManualEntry()Z
    .locals 1

    .line 382
    iget-object v0, p0, Lorg/jpos/core/CardHolder;->trailer:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

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

.method public setEXP(Ljava/lang/String;)V
    .locals 2
    .param p1, "exp"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/InvalidCardException;
        }
    .end annotation

    .line 281
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 283
    iput-object p1, p0, Lorg/jpos/core/CardHolder;->exp:Ljava/lang/String;

    .line 284
    return-void

    .line 282
    :cond_0
    new-instance v0, Lorg/jpos/core/InvalidCardException;

    const-string v1, "Invalid Exp length, must be 4"

    invoke-direct {v0, v1}, Lorg/jpos/core/InvalidCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPAN(Ljava/lang/String;)V
    .locals 2
    .param p1, "pan"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/InvalidCardException;
        }
    .end annotation

    .line 253
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lt v0, v1, :cond_0

    .line 255
    iput-object p1, p0, Lorg/jpos/core/CardHolder;->pan:Ljava/lang/String;

    .line 256
    return-void

    .line 254
    :cond_0
    new-instance v0, Lorg/jpos/core/InvalidCardException;

    const-string v1, "PAN length smaller than min required"

    invoke-direct {v0, v1}, Lorg/jpos/core/InvalidCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSecurityCode(Ljava/lang/String;)V
    .locals 0
    .param p1, "securityCode"    # Ljava/lang/String;

    .line 205
    iput-object p1, p0, Lorg/jpos/core/CardHolder;->securityCode:Ljava/lang/String;

    .line 206
    return-void
.end method

.method public setTrack1(Ljava/lang/String;)V
    .locals 0
    .param p1, "track1"    # Ljava/lang/String;

    .line 151
    iput-object p1, p0, Lorg/jpos/core/CardHolder;->track1:Ljava/lang/String;

    .line 152
    return-void
.end method

.method public setTrailer(Ljava/lang/String;)V
    .locals 0
    .param p1, "trailer"    # Ljava/lang/String;

    .line 242
    iput-object p1, p0, Lorg/jpos/core/CardHolder;->trailer:Ljava/lang/String;

    .line 243
    return-void
.end method

.method public setTrailler(Ljava/lang/String;)V
    .locals 0
    .param p1, "trailer"    # Ljava/lang/String;

    .line 234
    iput-object p1, p0, Lorg/jpos/core/CardHolder;->trailer:Ljava/lang/String;

    .line 235
    return-void
.end method
