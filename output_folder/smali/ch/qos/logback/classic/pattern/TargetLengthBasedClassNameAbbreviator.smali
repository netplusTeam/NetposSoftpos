.class public Lch/qos/logback/classic/pattern/TargetLengthBasedClassNameAbbreviator;
.super Ljava/lang/Object;
.source "TargetLengthBasedClassNameAbbreviator.java"

# interfaces
.implements Lch/qos/logback/classic/pattern/Abbreviator;


# instance fields
.field final targetLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "targetLength"    # I

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lch/qos/logback/classic/pattern/TargetLengthBasedClassNameAbbreviator;->targetLength:I

    .line 25
    return-void
.end method

.method static computeDotIndexes(Ljava/lang/String;[I)I
    .locals 3
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "dotArray"    # [I

    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "dotCount":I
    const/4 v1, 0x0

    .line 72
    .local v1, "k":I
    :goto_0
    const/16 v2, 0x2e

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 73
    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    const/16 v2, 0x10

    if-ge v0, v2, :cond_0

    .line 74
    aput v1, p1, v0

    .line 75
    add-int/lit8 v0, v0, 0x1

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 81
    :cond_0
    return v0
.end method

.method static printArray(Ljava/lang/String;[I)V
    .locals 4
    .param p0, "msg"    # Ljava/lang/String;
    .param p1, "ia"    # [I

    .line 116
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 117
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 118
    if-nez v0, :cond_0

    .line 119
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(I)V

    goto :goto_1

    .line 121
    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 117
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    .end local v0    # "i":I
    :cond_1
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V

    .line 125
    return-void
.end method


# virtual methods
.method public abbreviate(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "fqClassName"    # Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lch/qos/logback/classic/pattern/TargetLengthBasedClassNameAbbreviator;->targetLength:I

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 29
    .local v0, "buf":Ljava/lang/StringBuilder;
    if-eqz p1, :cond_4

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 34
    .local v1, "inLen":I
    iget v2, p0, Lch/qos/logback/classic/pattern/TargetLengthBasedClassNameAbbreviator;->targetLength:I

    if-ge v1, v2, :cond_0

    .line 35
    return-object p1

    .line 38
    :cond_0
    const/16 v2, 0x10

    new-array v2, v2, [I

    .line 41
    .local v2, "dotIndexesArray":[I
    const/16 v3, 0x11

    new-array v3, v3, [I

    .line 43
    .local v3, "lengthArray":[I
    invoke-static {p1, v2}, Lch/qos/logback/classic/pattern/TargetLengthBasedClassNameAbbreviator;->computeDotIndexes(Ljava/lang/String;[I)I

    move-result v4

    .line 48
    .local v4, "dotCount":I
    if-nez v4, :cond_1

    .line 49
    return-object p1

    .line 52
    :cond_1
    invoke-virtual {p0, p1, v2, v3, v4}, Lch/qos/logback/classic/pattern/TargetLengthBasedClassNameAbbreviator;->computeLengthArray(Ljava/lang/String;[I[II)V

    .line 54
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-gt v5, v4, :cond_3

    .line 55
    if-nez v5, :cond_2

    .line 56
    const/4 v6, 0x0

    aget v7, v3, v5

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 58
    :cond_2
    add-int/lit8 v6, v5, -0x1

    aget v6, v2, v6

    add-int/lit8 v7, v5, -0x1

    aget v7, v2, v7

    aget v8, v3, v5

    add-int/2addr v7, v8

    invoke-virtual {p1, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 63
    .end local v5    # "i":I
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 30
    .end local v1    # "inLen":I
    .end local v2    # "dotIndexesArray":[I
    .end local v3    # "lengthArray":[I
    .end local v4    # "dotCount":I
    :cond_4
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Class name may not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method computeLengthArray(Ljava/lang/String;[I[II)V
    .locals 6
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "dotArray"    # [I
    .param p3, "lengthArray"    # [I
    .param p4, "dotCount"    # I

    .line 85
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lch/qos/logback/classic/pattern/TargetLengthBasedClassNameAbbreviator;->targetLength:I

    sub-int/2addr v0, v1

    .line 91
    .local v0, "toTrim":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p4, :cond_4

    .line 92
    const/4 v2, -0x1

    .line 93
    .local v2, "previousDotPosition":I
    if-lez v1, :cond_0

    .line 94
    add-int/lit8 v3, v1, -0x1

    aget v2, p2, v3

    .line 96
    :cond_0
    aget v3, p2, v1

    sub-int/2addr v3, v2

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .line 99
    .local v3, "available":I
    if-ge v3, v4, :cond_1

    move v5, v3

    goto :goto_1

    :cond_1
    move v5, v4

    .line 102
    .local v5, "len":I
    :goto_1
    if-lez v0, :cond_3

    .line 103
    if-ge v3, v4, :cond_2

    move v4, v3

    .end local v5    # "len":I
    .local v4, "len":I
    :cond_2
    goto :goto_2

    .line 105
    .end local v4    # "len":I
    .restart local v5    # "len":I
    :cond_3
    move v4, v3

    .line 107
    .end local v5    # "len":I
    .restart local v4    # "len":I
    :goto_2
    sub-int v5, v3, v4

    sub-int/2addr v0, v5

    .line 108
    add-int/lit8 v5, v4, 0x1

    aput v5, p3, v1

    .line 91
    .end local v2    # "previousDotPosition":I
    .end local v3    # "available":I
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 111
    .end local v1    # "i":I
    .end local v4    # "len":I
    :cond_4
    add-int/lit8 v1, p4, -0x1

    .line 112
    .local v1, "lastDotIndex":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    aget v3, p2, v1

    sub-int/2addr v2, v3

    aput v2, p3, p4

    .line 113
    return-void
.end method
