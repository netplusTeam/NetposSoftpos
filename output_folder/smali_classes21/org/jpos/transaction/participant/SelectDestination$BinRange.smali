.class public Lorg/jpos/transaction/participant/SelectDestination$BinRange;
.super Ljava/lang/Object;
.source "SelectDestination.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/transaction/participant/SelectDestination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BinRange"
.end annotation


# static fields
.field private static rangePattern:Ljava/util/regex/Pattern;


# instance fields
.field private destination:Ljava/lang/String;

.field private high:Ljava/math/BigInteger;

.field private low:Ljava/math/BigInteger;

.field private weight:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 153
    const-string v0, "^([\\d]{1,19})*(?:\\.\\.)?([\\d]{0,19})?$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->rangePattern:Ljava/util/regex/Pattern;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "destination"    # Ljava/lang/String;
    .param p2, "rangeExpr"    # Ljava/lang/String;

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->destination:Ljava/lang/String;

    .line 168
    sget-object v0, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->rangePattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 169
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    const-string v2, "Invalid range "

    if-eqz v1, :cond_2

    .line 172
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    .line 173
    .local v1, "l":Ljava/lang/String;
    const/4 v3, 0x2

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "h":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    move-object v3, v4

    .line 175
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    int-to-short v4, v4

    iput-short v4, p0, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->weight:S

    .line 176
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-static {v4}, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->floor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, p0, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->low:Ljava/math/BigInteger;

    .line 177
    new-instance v4, Ljava/math/BigInteger;

    invoke-direct {v4, v3}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v4}, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->ceiling(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v4

    iput-object v4, p0, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->high:Ljava/math/BigInteger;

    .line 178
    iget-object v5, p0, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->low:Ljava/math/BigInteger;

    invoke-virtual {v5, v4}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v4

    if-gtz v4, :cond_1

    .line 180
    return-void

    .line 179
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->low:Ljava/math/BigInteger;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "/"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->high:Ljava/math/BigInteger;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 170
    .end local v1    # "l":Ljava/lang/String;
    .end local v3    # "h":Ljava/lang/String;
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private ceiling(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 4
    .param p1, "i"    # Ljava/math/BigInteger;

    .line 221
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, p1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->log10(D)D

    move-result-wide v2

    double-to-int v0, v2

    add-int/2addr v1, v0

    :goto_0
    move v0, v1

    .line 222
    .local v0, "digits":I
    invoke-static {p1}, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->floor(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    rsub-int/lit8 v3, v0, 0x13

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    sget-object v2, Ljava/math/BigInteger;->ONE:Ljava/math/BigInteger;

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->subtract(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    return-object v1
.end method

.method static floor(Ljava/math/BigInteger;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "i"    # Ljava/math/BigInteger;

    .line 214
    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v0, p0}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Ljava/math/BigInteger;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    double-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 216
    .local v0, "digits":I
    sget-object v1, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    rsub-int/lit8 v2, v0, 0x13

    invoke-virtual {v1, v2}, Ljava/math/BigInteger;->pow(I)Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object p0

    .line 218
    .end local v0    # "digits":I
    :cond_0
    return-object p0
.end method


# virtual methods
.method public compareTo(Ljava/lang/Object;)I
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .line 203
    invoke-virtual {p0}, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public destination()Ljava/lang/String;
    .locals 1

    .line 210
    iget-object v0, p0, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->destination:Ljava/lang/String;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 184
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 185
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 186
    :cond_1
    move-object v2, p1

    check-cast v2, Lorg/jpos/transaction/participant/SelectDestination$BinRange;

    .line 187
    .local v2, "binRange":Lorg/jpos/transaction/participant/SelectDestination$BinRange;
    iget-short v3, p0, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->weight:S

    iget-short v4, v2, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->weight:S

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->low:Ljava/math/BigInteger;

    iget-object v4, v2, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->low:Ljava/math/BigInteger;

    .line 188
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->high:Ljava/math/BigInteger;

    iget-object v4, v2, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->high:Ljava/math/BigInteger;

    .line 189
    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 187
    :goto_0
    return v0

    .line 185
    .end local v2    # "binRange":Lorg/jpos/transaction/participant/SelectDestination$BinRange;
    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 194
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->low:Ljava/math/BigInteger;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->high:Ljava/math/BigInteger;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-short v1, p0, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->weight:S

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isInRange(Ljava/math/BigInteger;)Z
    .locals 1
    .param p1, "i"    # Ljava/math/BigInteger;

    .line 206
    iget-object v0, p0, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->low:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->high:Ljava/math/BigInteger;

    invoke-virtual {p1, v0}, Ljava/math/BigInteger;->compareTo(Ljava/math/BigInteger;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 199
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    iget-short v1, p0, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->weight:S

    rsub-int/lit8 v1, v1, 0x13

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->low:Ljava/math/BigInteger;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->high:Ljava/math/BigInteger;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lorg/jpos/transaction/participant/SelectDestination$BinRange;->destination:Ljava/lang/String;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    const-string v1, "%02d:%s..%s [%s]"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
