.class public Lorg/osgi/framework/Version;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/osgi/framework/Version;",
        ">;"
    }
.end annotation


# static fields
.field private static final SEPARATOR:Ljava/lang/String; = "."

.field public static final emptyVersion:Lorg/osgi/framework/Version;


# instance fields
.field private transient hash:I

.field private final major:I

.field private final micro:I

.field private final minor:I

.field private final qualifier:Ljava/lang/String;

.field private transient versionString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    new-instance v0, Lorg/osgi/framework/Version;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lorg/osgi/framework/Version;-><init>(III)V

    sput-object v0, Lorg/osgi/framework/Version;->emptyVersion:Lorg/osgi/framework/Version;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 1
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "micro"    # I

    .line 70
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/osgi/framework/Version;-><init>(IIILjava/lang/String;)V

    .line 71
    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0
    .param p1, "major"    # I
    .param p2, "minor"    # I
    .param p3, "micro"    # I
    .param p4, "qualifier"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    if-nez p4, :cond_0

    .line 87
    const-string p4, ""

    .line 90
    :cond_0
    iput p1, p0, Lorg/osgi/framework/Version;->major:I

    .line 91
    iput p2, p0, Lorg/osgi/framework/Version;->minor:I

    .line 92
    iput p3, p0, Lorg/osgi/framework/Version;->micro:I

    .line 93
    iput-object p4, p0, Lorg/osgi/framework/Version;->qualifier:Ljava/lang/String;

    .line 94
    invoke-direct {p0}, Lorg/osgi/framework/Version;->validate()V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9
    .param p1, "version"    # Ljava/lang/String;

    .line 118
    const-string v0, "\": invalid format"

    const-string v1, "invalid version \""

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    const/4 v2, 0x0

    .line 120
    .local v2, "maj":I
    const/4 v3, 0x0

    .line 121
    .local v3, "min":I
    const/4 v4, 0x0

    .line 122
    .local v4, "mic":I
    const-string v5, ""

    .line 125
    .local v5, "qual":Ljava/lang/String;
    :try_start_0
    new-instance v6, Ljava/util/StringTokenizer;

    const-string v7, "."

    const/4 v8, 0x1

    invoke-direct {v6, p1, v7, v8}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 126
    .local v6, "st":Ljava/util/StringTokenizer;
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Lorg/osgi/framework/Version;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move v2, v7

    .line 128
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 129
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 130
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Lorg/osgi/framework/Version;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move v3, v7

    .line 132
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 133
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 134
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, p1}, Lorg/osgi/framework/Version;->parseInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    move v4, v7

    .line 136
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 137
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    .line 138
    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/util/StringTokenizer;->nextToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 140
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2    # "maj":I
    .end local v3    # "min":I
    .end local v4    # "mic":I
    .end local v5    # "qual":Ljava/lang/String;
    .end local p1    # "version":Ljava/lang/String;
    throw v7
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    .end local v6    # "st":Ljava/util/StringTokenizer;
    .restart local v2    # "maj":I
    .restart local v3    # "min":I
    .restart local v4    # "mic":I
    .restart local v5    # "qual":Ljava/lang/String;
    .restart local p1    # "version":Ljava/lang/String;
    :cond_1
    :goto_0
    nop

    .line 152
    iput v2, p0, Lorg/osgi/framework/Version;->major:I

    .line 153
    iput v3, p0, Lorg/osgi/framework/Version;->minor:I

    .line 154
    iput v4, p0, Lorg/osgi/framework/Version;->micro:I

    .line 155
    iput-object v5, p0, Lorg/osgi/framework/Version;->qualifier:Ljava/lang/String;

    .line 156
    invoke-direct {p0}, Lorg/osgi/framework/Version;->validate()V

    .line 157
    return-void

    .line 146
    :catch_0
    move-exception v6

    .line 147
    .local v6, "e":Ljava/util/NoSuchElementException;
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v7, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    move-object v0, v7

    .line 148
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0, v6}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 149
    throw v0
.end method

.method private static parseInt(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p0, "value"    # Ljava/lang/String;
    .param p1, "version"    # Ljava/lang/String;

    .line 168
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid version \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\": non-numeric \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 171
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1, v0}, Ljava/lang/IllegalArgumentException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 172
    throw v1
.end method

.method public static parseVersion(Ljava/lang/String;)Lorg/osgi/framework/Version;
    .locals 1
    .param p0, "version"    # Ljava/lang/String;

    .line 224
    if-nez p0, :cond_0

    .line 225
    sget-object v0, Lorg/osgi/framework/Version;->emptyVersion:Lorg/osgi/framework/Version;

    return-object v0

    .line 228
    :cond_0
    invoke-static {p0}, Lorg/osgi/framework/Version;->valueOf(Ljava/lang/String;)Lorg/osgi/framework/Version;

    move-result-object v0

    return-object v0
.end method

.method private validate()V
    .locals 8

    .line 183
    iget v0, p0, Lorg/osgi/framework/Version;->major:I

    const-string v1, "\": negative number \""

    const-string v2, "\""

    const-string v3, "invalid version \""

    if-ltz v0, :cond_8

    .line 186
    iget v0, p0, Lorg/osgi/framework/Version;->minor:I

    if-ltz v0, :cond_7

    .line 189
    iget v0, p0, Lorg/osgi/framework/Version;->micro:I

    if-ltz v0, :cond_6

    .line 192
    iget-object v0, p0, Lorg/osgi/framework/Version;->qualifier:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .local v0, "arr$":[C
    array-length v1, v0

    .local v1, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v1, :cond_5

    aget-char v5, v0, v4

    .line 193
    .local v5, "ch":C
    const/16 v6, 0x41

    if-gt v6, v5, :cond_0

    const/16 v6, 0x5a

    if-gt v5, v6, :cond_0

    .line 194
    goto :goto_1

    .line 196
    :cond_0
    const/16 v6, 0x61

    if-gt v6, v5, :cond_1

    const/16 v6, 0x7a

    if-gt v5, v6, :cond_1

    .line 197
    goto :goto_1

    .line 199
    :cond_1
    const/16 v6, 0x30

    if-gt v6, v5, :cond_2

    const/16 v6, 0x39

    if-gt v5, v6, :cond_2

    .line 200
    goto :goto_1

    .line 202
    :cond_2
    const/16 v6, 0x5f

    if-eq v5, v6, :cond_4

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_3

    .line 203
    goto :goto_1

    .line 205
    :cond_3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/osgi/framework/Version;->toString0()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "\": invalid qualifier \""

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Lorg/osgi/framework/Version;->qualifier:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 192
    .end local v5    # "ch":C
    :cond_4
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 207
    .end local v0    # "arr$":[C
    .end local v1    # "len$":I
    .end local v4    # "i$":I
    :cond_5
    return-void

    .line 190
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/osgi/framework/Version;->toString0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lorg/osgi/framework/Version;->micro:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 187
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/osgi/framework/Version;->toString0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lorg/osgi/framework/Version;->minor:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lorg/osgi/framework/Version;->toString0()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Lorg/osgi/framework/Version;->major:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/osgi/framework/Version;
    .locals 1
    .param p0, "version"    # Ljava/lang/String;

    .line 252
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 253
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 254
    sget-object v0, Lorg/osgi/framework/Version;->emptyVersion:Lorg/osgi/framework/Version;

    return-object v0

    .line 257
    :cond_0
    new-instance v0, Lorg/osgi/framework/Version;

    invoke-direct {v0, p0}, Lorg/osgi/framework/Version;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .line 43
    move-object v0, p1

    check-cast v0, Lorg/osgi/framework/Version;

    invoke-virtual {p0, v0}, Lorg/osgi/framework/Version;->compareTo(Lorg/osgi/framework/Version;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/osgi/framework/Version;)I
    .locals 3
    .param p1, "other"    # Lorg/osgi/framework/Version;

    .line 406
    if-ne p1, p0, :cond_0

    .line 407
    const/4 v0, 0x0

    return v0

    .line 410
    :cond_0
    iget v0, p0, Lorg/osgi/framework/Version;->major:I

    iget v1, p1, Lorg/osgi/framework/Version;->major:I

    sub-int/2addr v0, v1

    .line 411
    .local v0, "result":I
    if-eqz v0, :cond_1

    .line 412
    return v0

    .line 415
    :cond_1
    iget v1, p0, Lorg/osgi/framework/Version;->minor:I

    iget v2, p1, Lorg/osgi/framework/Version;->minor:I

    sub-int/2addr v1, v2

    .line 416
    .end local v0    # "result":I
    .local v1, "result":I
    if-eqz v1, :cond_2

    .line 417
    return v1

    .line 420
    :cond_2
    iget v0, p0, Lorg/osgi/framework/Version;->micro:I

    iget v2, p1, Lorg/osgi/framework/Version;->micro:I

    sub-int/2addr v0, v2

    .line 421
    .end local v1    # "result":I
    .restart local v0    # "result":I
    if-eqz v0, :cond_3

    .line 422
    return v0

    .line 425
    :cond_3
    iget-object v1, p0, Lorg/osgi/framework/Version;->qualifier:Ljava/lang/String;

    iget-object v2, p1, Lorg/osgi/framework/Version;->qualifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "object"    # Ljava/lang/Object;

    .line 368
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 369
    return v0

    .line 372
    :cond_0
    instance-of v1, p1, Lorg/osgi/framework/Version;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 373
    return v2

    .line 376
    :cond_1
    move-object v1, p1

    check-cast v1, Lorg/osgi/framework/Version;

    .line 377
    .local v1, "other":Lorg/osgi/framework/Version;
    iget v3, p0, Lorg/osgi/framework/Version;->major:I

    iget v4, v1, Lorg/osgi/framework/Version;->major:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/osgi/framework/Version;->minor:I

    iget v4, v1, Lorg/osgi/framework/Version;->minor:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lorg/osgi/framework/Version;->micro:I

    iget v4, v1, Lorg/osgi/framework/Version;->micro:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lorg/osgi/framework/Version;->qualifier:Ljava/lang/String;

    iget-object v4, v1, Lorg/osgi/framework/Version;->qualifier:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getMajor()I
    .locals 1

    .line 266
    iget v0, p0, Lorg/osgi/framework/Version;->major:I

    return v0
.end method

.method public getMicro()I
    .locals 1

    .line 284
    iget v0, p0, Lorg/osgi/framework/Version;->micro:I

    return v0
.end method

.method public getMinor()I
    .locals 1

    .line 275
    iget v0, p0, Lorg/osgi/framework/Version;->minor:I

    return v0
.end method

.method public getQualifier()Ljava/lang/String;
    .locals 1

    .line 293
    iget-object v0, p0, Lorg/osgi/framework/Version;->qualifier:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 342
    iget v0, p0, Lorg/osgi/framework/Version;->hash:I

    .line 343
    .local v0, "h":I
    if-eqz v0, :cond_0

    .line 344
    return v0

    .line 346
    :cond_0
    const/16 v0, 0x20f

    .line 347
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/osgi/framework/Version;->major:I

    add-int/2addr v1, v2

    .line 348
    .end local v0    # "h":I
    .local v1, "h":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lorg/osgi/framework/Version;->minor:I

    add-int/2addr v0, v2

    .line 349
    .end local v1    # "h":I
    .restart local v0    # "h":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lorg/osgi/framework/Version;->micro:I

    add-int/2addr v1, v2

    .line 350
    .end local v0    # "h":I
    .restart local v1    # "h":I
    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Lorg/osgi/framework/Version;->qualifier:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v0, v2

    .line 351
    .end local v1    # "h":I
    .restart local v0    # "h":I
    iput v0, p0, Lorg/osgi/framework/Version;->hash:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 308
    invoke-virtual {p0}, Lorg/osgi/framework/Version;->toString0()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method toString0()Ljava/lang/String;
    .locals 5

    .line 317
    iget-object v0, p0, Lorg/osgi/framework/Version;->versionString:Ljava/lang/String;

    .line 318
    .local v0, "s":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 319
    return-object v0

    .line 321
    :cond_0
    iget-object v1, p0, Lorg/osgi/framework/Version;->qualifier:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 322
    .local v1, "q":I
    new-instance v2, Ljava/lang/StringBuffer;

    add-int/lit8 v3, v1, 0x14

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 323
    .local v2, "result":Ljava/lang/StringBuffer;
    iget v3, p0, Lorg/osgi/framework/Version;->major:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 324
    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 325
    iget v4, p0, Lorg/osgi/framework/Version;->minor:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 326
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 327
    iget v4, p0, Lorg/osgi/framework/Version;->micro:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 328
    if-lez v1, :cond_1

    .line 329
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 330
    iget-object v3, p0, Lorg/osgi/framework/Version;->qualifier:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 332
    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/osgi/framework/Version;->versionString:Ljava/lang/String;

    return-object v3
.end method
