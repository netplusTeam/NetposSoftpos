.class public Lorg/jpos/core/DefaultLUHNCalculator;
.super Ljava/lang/Object;
.source "DefaultLUHNCalculator.java"

# interfaces
.implements Lorg/jpos/core/LUHNCalculator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public calculate(Ljava/lang/String;)C
    .locals 7
    .param p1, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/InvalidCardException;
        }
    .end annotation

    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    .line 33
    .local v0, "odd":I
    const/4 v1, 0x0

    move v2, v1

    .local v2, "crc":I
    move v3, v1

    .local v3, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0xa

    if-ge v3, v4, :cond_3

    .line 34
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 35
    .local v4, "c":C
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 38
    add-int/lit8 v6, v4, -0x30

    int-to-char v4, v6

    .line 39
    rem-int/lit8 v6, v3, 0x2

    if-eq v6, v0, :cond_1

    .line 40
    mul-int/lit8 v6, v4, 0x2

    if-lt v6, v5, :cond_0

    mul-int/lit8 v5, v4, 0x2

    add-int/lit8 v5, v5, -0x9

    goto :goto_1

    :cond_0
    mul-int/lit8 v5, v4, 0x2

    :goto_1
    add-int/2addr v2, v5

    goto :goto_2

    .line 42
    :cond_1
    add-int/2addr v2, v4

    .line 33
    .end local v4    # "c":C
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 36
    .restart local v4    # "c":C
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid PAN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 45
    .end local v4    # "c":C
    :cond_3
    rem-int/lit8 v4, v2, 0xa

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    rem-int/lit8 v1, v2, 0xa

    rsub-int/lit8 v1, v1, 0xa

    :goto_3
    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    return v1
.end method

.method public verify(Ljava/lang/String;)Z
    .locals 4
    .param p1, "p"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/InvalidCardException;
        }
    .end annotation

    .line 54
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_1

    .line 57
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/jpos/core/DefaultLUHNCalculator;->calculate(Ljava/lang/String;)C

    move-result v2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    return v1

    .line 55
    :cond_1
    new-instance v0, Lorg/jpos/core/InvalidCardException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid PAN "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jpos/core/InvalidCardException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
