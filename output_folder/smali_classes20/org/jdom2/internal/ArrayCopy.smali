.class public final Lorg/jdom2/internal/ArrayCopy;
.super Ljava/lang/Object;
.source "ArrayCopy.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static final copyOf([CI)[C
    .locals 3
    .param p0, "source"    # [C
    .param p1, "len"    # I

    .line 113
    new-array v0, p1, [C

    .line 114
    .local v0, "dest":[C
    array-length v1, p0

    if-ge p1, v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    array-length v1, p0

    :goto_0
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    return-object v0
.end method

.method public static final copyOf([II)[I
    .locals 3
    .param p0, "source"    # [I
    .param p1, "len"    # I

    .line 125
    new-array v0, p1, [I

    .line 126
    .local v0, "dest":[I
    array-length v1, p0

    if-ge p1, v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    array-length v1, p0

    :goto_0
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 127
    return-object v0
.end method

.method public static final copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;
    .locals 3
    .param p1, "len"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;I)[TE;"
        }
    .end annotation

    .line 81
    .local p0, "source":[Ljava/lang/Object;, "[TE;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 82
    .local v0, "dest":[Ljava/lang/Object;, "[TE;"
    array-length v1, p0

    if-ge p1, v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    array-length v1, p0

    :goto_0
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 83
    return-object v0
.end method

.method public static final copyOf([ZI)[Z
    .locals 3
    .param p0, "source"    # [Z
    .param p1, "len"    # I

    .line 137
    new-array v0, p1, [Z

    .line 138
    .local v0, "dest":[Z
    array-length v1, p0

    if-ge p1, v1, :cond_0

    move v1, p1

    goto :goto_0

    :cond_0
    array-length v1, p0

    :goto_0
    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 139
    return-object v0
.end method

.method public static final copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;
    .locals 4
    .param p1, "from"    # I
    .param p2, "to"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">([TE;II)[TE;"
        }
    .end annotation

    .line 95
    .local p0, "source":[Ljava/lang/Object;, "[TE;"
    sub-int v0, p2, p1

    .line 96
    .local v0, "len":I
    if-ltz v0, :cond_1

    .line 100
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 101
    .local v1, "dest":[Ljava/lang/Object;, "[TE;"
    add-int v2, p1, v0

    array-length v3, p0

    if-le v2, v3, :cond_0

    array-length v2, p0

    sub-int/2addr v2, p1

    goto :goto_0

    :cond_0
    move v2, v0

    .line 102
    .local v2, "tocopy":I
    :goto_0
    const/4 v3, 0x0

    invoke-static {p0, p1, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 103
    return-object v1

    .line 97
    .end local v1    # "dest":[Ljava/lang/Object;, "[TE;"
    .end local v2    # "tocopy":I
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "From("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") > To ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
