.class public Lorg/jpos/core/SimpleConfiguration;
.super Ljava/lang/Object;
.source "SimpleConfiguration.java"

# interfaces
.implements Lorg/jpos/core/Configuration;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x5849a4b30158fe38L


# instance fields
.field private props:Ljava/util/Properties;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/jpos/core/SimpleConfiguration;->props:Ljava/util/Properties;

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lorg/jpos/core/SimpleConfiguration;->props:Ljava/util/Properties;

    .line 46
    invoke-virtual {p0, p1}, Lorg/jpos/core/SimpleConfiguration;->load(Ljava/lang/String;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/util/Properties;)V
    .locals 0
    .param p1, "props"    # Ljava/util/Properties;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lorg/jpos/core/SimpleConfiguration;->props:Ljava/util/Properties;

    .line 41
    return-void
.end method

.method static synthetic lambda$getAll$0([Ljava/lang/String;Lorg/jpos/core/Environment;I)V
    .locals 1
    .param p0, "ret"    # [Ljava/lang/String;
    .param p1, "env"    # Lorg/jpos/core/Environment;
    .param p2, "i"    # I

    .line 86
    aget-object v0, p0, p2

    invoke-virtual {p1, v0}, Lorg/jpos/core/Environment;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, p2

    return-void
.end method

.method static synthetic lambda$getAll$1(I)[Ljava/lang/String;
    .locals 1
    .param p0, "x$0"    # I

    .line 87
    new-array v0, p0, [Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 164
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    return v0

    .line 165
    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 166
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/jpos/core/SimpleConfiguration;

    .line 167
    .local v0, "that":Lorg/jpos/core/SimpleConfiguration;
    iget-object v1, p0, Lorg/jpos/core/SimpleConfiguration;->props:Ljava/util/Properties;

    iget-object v2, v0, Lorg/jpos/core/SimpleConfiguration;->props:Ljava/util/Properties;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 165
    .end local v0    # "that":Lorg/jpos/core/SimpleConfiguration;
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 118
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lorg/jpos/core/SimpleConfiguration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Ljava/lang/String;

    .line 64
    iget-object v0, p0, Lorg/jpos/core/SimpleConfiguration;->props:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 66
    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    .line 67
    .local v1, "arr":[Ljava/lang/String;
    array-length v4, v1

    if-lez v4, :cond_0

    aget-object v3, v1, v2

    :cond_0
    move-object v0, v3

    .end local v1    # "arr":[Ljava/lang/String;
    goto :goto_0

    .line 68
    :cond_1
    instance-of v1, v0, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 69
    move-object v1, v0

    check-cast v1, Ljava/util/List;

    .line 70
    .local v1, "l":Ljava/util/List;
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    :cond_2
    move-object v0, v3

    goto :goto_1

    .line 68
    .end local v1    # "l":Ljava/util/List;
    :cond_3
    :goto_0
    nop

    .line 72
    :goto_1
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-static {v1, p2}, Lorg/jpos/core/Environment;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_4
    move-object v1, p2

    :goto_2
    return-object v1
.end method

.method public getAll(Ljava/lang/String;)[Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 76
    iget-object v0, p0, Lorg/jpos/core/SimpleConfiguration;->props:Ljava/util/Properties;

    invoke-virtual {v0, p1}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 77
    .local v0, "obj":Ljava/lang/Object;
    instance-of v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 78
    move-object v1, v0

    check-cast v1, [Ljava/lang/String;

    check-cast v1, [Ljava/lang/String;

    .local v1, "ret":[Ljava/lang/String;
    goto :goto_0

    .line 79
    .end local v1    # "ret":[Ljava/lang/String;
    :cond_0
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 80
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 81
    .restart local v1    # "ret":[Ljava/lang/String;
    move-object v3, v0

    check-cast v3, Ljava/lang/String;

    aput-object v3, v1, v2

    goto :goto_0

    .line 83
    .end local v1    # "ret":[Ljava/lang/String;
    :cond_1
    new-array v1, v2, [Ljava/lang/String;

    .line 85
    .restart local v1    # "ret":[Ljava/lang/String;
    :goto_0
    invoke-static {}, Lorg/jpos/core/Environment;->getEnvironment()Lorg/jpos/core/Environment;

    move-result-object v3

    .line 86
    .local v3, "env":Lorg/jpos/core/Environment;
    array-length v4, v1

    invoke-static {v2, v4}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    move-result-object v2

    new-instance v4, Lorg/jpos/core/SimpleConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1, v3}, Lorg/jpos/core/SimpleConfiguration$$ExternalSyntheticLambda0;-><init>([Ljava/lang/String;Lorg/jpos/core/Environment;)V

    invoke-interface {v2, v4}, Ljava/util/stream/IntStream;->forEachOrdered(Ljava/util/function/IntConsumer;)V

    .line 87
    invoke-static {v1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lorg/jpos/core/SimpleConfiguration$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lorg/jpos/core/SimpleConfiguration$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v4, Lorg/jpos/core/SimpleConfiguration$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lorg/jpos/core/SimpleConfiguration$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    return-object v2
.end method

.method public getBoolean(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 139
    const-string v0, "false"

    invoke-virtual {p0, p1, v0}, Lorg/jpos/core/SimpleConfiguration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, "v":Ljava/lang/String;
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # Z

    .line 143
    invoke-virtual {p0, p1}, Lorg/jpos/core/SimpleConfiguration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    .local v0, "v":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    move v1, p2

    goto :goto_1

    .line 145
    :cond_0
    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "yes"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 144
    :goto_1
    return v1
.end method

.method public getBooleans(Ljava/lang/String;)[Z
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 111
    invoke-virtual {p0, p1}, Lorg/jpos/core/SimpleConfiguration;->getAll(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 112
    .local v0, "ss":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [Z

    .line 113
    .local v1, "bb":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_2

    .line 114
    aget-object v3, v0, v2

    const-string v4, "true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    aget-object v3, v0, v2

    const-string v4, "yes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    aput-boolean v3, v1, v2

    .line 113
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public getDouble(Ljava/lang/String;)D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 133
    const-string v0, "0.00"

    invoke-virtual {p0, p1, v0}, Lorg/jpos/core/SimpleConfiguration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDouble(Ljava/lang/String;D)D
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # D

    .line 136
    invoke-static {p2, p3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jpos/core/SimpleConfiguration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public getDoubles(Ljava/lang/String;)[D
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 104
    invoke-virtual {p0, p1}, Lorg/jpos/core/SimpleConfiguration;->getAll(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "ss":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [D

    .line 106
    .local v1, "dd":[D
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 107
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 106
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 108
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public getInt(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 121
    const-string v0, "0"

    invoke-virtual {p0, p1, v0}, Lorg/jpos/core/SimpleConfiguration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .line 124
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jpos/core/SimpleConfiguration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getInts(Ljava/lang/String;)[I
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .line 90
    invoke-virtual {p0, p1}, Lorg/jpos/core/SimpleConfiguration;->getAll(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 91
    .local v0, "ss":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [I

    .line 92
    .local v1, "ii":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 93
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 92
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 94
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public getLong(Ljava/lang/String;)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 127
    const-string v0, "0"

    invoke-virtual {p0, p1, v0}, Lorg/jpos/core/SimpleConfiguration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .line 130
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jpos/core/SimpleConfiguration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongs(Ljava/lang/String;)[J
    .locals 5
    .param p1, "name"    # Ljava/lang/String;

    .line 97
    invoke-virtual {p0, p1}, Lorg/jpos/core/SimpleConfiguration;->getAll(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "ss":[Ljava/lang/String;
    array-length v1, v0

    new-array v1, v1, [J

    .line 99
    .local v1, "ll":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 100
    aget-object v3, v0, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    aput-wide v3, v1, v2

    .line 99
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 101
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public hashCode()I
    .locals 3

    .line 172
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lorg/jpos/core/SimpleConfiguration;->props:Ljava/util/Properties;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lorg/jpos/core/SimpleConfiguration;->props:Ljava/util/Properties;

    invoke-virtual {v0}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public load(Ljava/lang/String;)V
    .locals 3
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "fis":Ljava/io/FileInputStream;
    iget-object v1, p0, Lorg/jpos/core/SimpleConfiguration;->props:Ljava/util/Properties;

    new-instance v2, Ljava/io/BufferedInputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1, v2}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 152
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 153
    return-void
.end method

.method public declared-synchronized put(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    monitor-enter p0

    .line 155
    :try_start_0
    iget-object v0, p0, Lorg/jpos/core/SimpleConfiguration;->props:Ljava/util/Properties;

    invoke-virtual {v0, p1, p2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    monitor-exit p0

    return-void

    .line 154
    .end local p0    # "this":Lorg/jpos/core/SimpleConfiguration;
    .end local p1    # "name":Ljava/lang/String;
    .end local p2    # "value":Ljava/lang/Object;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SimpleConfiguration{props="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/core/SimpleConfiguration;->props:Ljava/util/Properties;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
