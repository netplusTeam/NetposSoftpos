.class public final Lio/netty/util/internal/AppendableCharSequence;
.super Ljava/lang/Object;
.source "AppendableCharSequence.java"

# interfaces
.implements Ljava/lang/CharSequence;
.implements Ljava/lang/Appendable;


# instance fields
.field private chars:[C

.field private pos:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "length"    # I

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 29
    new-array v0, p1, [C

    iput-object v0, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    .line 30
    return-void

    .line 27
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (length: >= 1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private constructor <init>([C)V
    .locals 3
    .param p1, "chars"    # [C

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    array-length v0, p1

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 36
    iput-object p1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    .line 37
    array-length v0, p1

    iput v0, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    .line 38
    return-void

    .line 34
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (length: >= 1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static expand([CII)[C
    .locals 3
    .param p0, "array"    # [C
    .param p1, "neededSpace"    # I
    .param p2, "size"    # I

    .line 156
    array-length v0, p0

    .line 159
    .local v0, "newCapacity":I
    :cond_0
    shl-int/lit8 v0, v0, 0x1

    .line 161
    if-ltz v0, :cond_1

    .line 165
    if-gt p1, v0, :cond_0

    .line 167
    new-array v1, v0, [C

    .line 168
    .local v1, "newArray":[C
    const/4 v2, 0x0

    invoke-static {p0, v2, v1, v2, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 170
    return-object v1

    .line 162
    .end local v1    # "newArray":[C
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1
.end method


# virtual methods
.method public append(C)Lio/netty/util/internal/AppendableCharSequence;
    .locals 4
    .param p1, "c"    # C

    .line 84
    iget v0, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    iget-object v1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    array-length v1, v1

    if-ne v0, v1, :cond_0

    .line 85
    iget-object v0, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    .line 86
    .local v0, "old":[C
    array-length v1, v0

    shl-int/lit8 v1, v1, 0x1

    new-array v1, v1, [C

    iput-object v1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    .line 87
    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 89
    .end local v0    # "old":[C
    :cond_0
    iget-object v0, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    iget v1, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    aput-char p1, v0, v1

    .line 90
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lio/netty/util/internal/AppendableCharSequence;
    .locals 2
    .param p1, "csq"    # Ljava/lang/CharSequence;

    .line 95
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lio/netty/util/internal/AppendableCharSequence;->append(Ljava/lang/CharSequence;II)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object v0

    return-object v0
.end method

.method public append(Ljava/lang/CharSequence;II)Lio/netty/util/internal/AppendableCharSequence;
    .locals 5
    .param p1, "csq"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .line 100
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lt v0, p3, :cond_3

    .line 103
    sub-int v0, p3, p2

    .line 104
    .local v0, "length":I
    iget-object v1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    array-length v2, v1

    iget v3, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    sub-int/2addr v2, v3

    if-le v0, v2, :cond_0

    .line 105
    add-int v2, v3, v0

    invoke-static {v1, v2, v3}, Lio/netty/util/internal/AppendableCharSequence;->expand([CII)[C

    move-result-object v1

    iput-object v1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    .line 107
    :cond_0
    instance-of v1, p1, Lio/netty/util/internal/AppendableCharSequence;

    if-eqz v1, :cond_1

    .line 109
    move-object v1, p1

    check-cast v1, Lio/netty/util/internal/AppendableCharSequence;

    .line 110
    .local v1, "seq":Lio/netty/util/internal/AppendableCharSequence;
    iget-object v2, v1, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    .line 111
    .local v2, "src":[C
    iget-object v3, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    iget v4, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    invoke-static {v2, p2, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 112
    iget v3, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    add-int/2addr v3, v0

    iput v3, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    .line 113
    return-object p0

    .line 115
    .end local v1    # "seq":Lio/netty/util/internal/AppendableCharSequence;
    .end local v2    # "src":[C
    :cond_1
    move v1, p2

    .local v1, "i":I
    :goto_0
    if-ge v1, p3, :cond_2

    .line 116
    iget-object v2, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    iget v3, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    aput-char v4, v2, v3

    .line 115
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 119
    .end local v1    # "i":I
    :cond_2
    return-object p0

    .line 101
    .end local v0    # "length":I
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1}, Lio/netty/util/internal/AppendableCharSequence;->append(C)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1}, Lio/netty/util/internal/AppendableCharSequence;->append(Ljava/lang/CharSequence;)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/util/internal/AppendableCharSequence;->append(Ljava/lang/CharSequence;II)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object p1

    return-object p1
.end method

.method public charAt(I)C
    .locals 1
    .param p1, "index"    # I

    .line 54
    iget v0, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    if-gt p1, v0, :cond_0

    .line 57
    iget-object v0, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    aget-char v0, v0, p1

    return v0

    .line 55
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public charAtUnsafe(I)C
    .locals 1
    .param p1, "index"    # I

    .line 68
    iget-object v0, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    aget-char v0, v0, p1

    return v0
.end method

.method public length()I
    .locals 1

    .line 49
    iget v0, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    return v0
.end method

.method public reset()V
    .locals 1

    .line 127
    const/4 v0, 0x0

    iput v0, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    .line 128
    return-void
.end method

.method public setLength(I)V
    .locals 3
    .param p1, "length"    # I

    .line 41
    if-ltz p1, :cond_0

    iget v0, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    if-gt p1, v0, :cond_0

    .line 44
    iput p1, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    .line 45
    return-void

    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (length: >= 0, <= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public subSequence(II)Lio/netty/util/internal/AppendableCharSequence;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 73
    if-ne p1, p2, :cond_0

    .line 77
    new-instance v0, Lio/netty/util/internal/AppendableCharSequence;

    const/16 v1, 0x10

    iget-object v2, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    array-length v2, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-direct {v0, v1}, Lio/netty/util/internal/AppendableCharSequence;-><init>(I)V

    return-object v0

    .line 79
    :cond_0
    new-instance v0, Lio/netty/util/internal/AppendableCharSequence;

    iget-object v1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    invoke-static {v1, p1, p2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/util/internal/AppendableCharSequence;-><init>([C)V

    return-object v0
.end method

.method public bridge synthetic subSequence(II)Ljava/lang/CharSequence;
    .locals 0

    .line 21
    invoke-virtual {p0, p1, p2}, Lio/netty/util/internal/AppendableCharSequence;->subSequence(II)Lio/netty/util/internal/AppendableCharSequence;

    move-result-object p1

    return-object p1
.end method

.method public subStringUnsafe(II)Ljava/lang/String;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 152
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    sub-int v2, p2, p1

    invoke-direct {v0, v1, p1, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method

.method public substring(II)Ljava/lang/String;
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 139
    sub-int v0, p2, p1

    .line 140
    .local v0, "length":I
    iget v1, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    if-gt p1, v1, :cond_0

    if-gt v0, v1, :cond_0

    .line 143
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    invoke-direct {v1, v2, p1, v0}, Ljava/lang/String;-><init>([CII)V

    return-object v1

    .line 141
    :cond_0
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 132
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lio/netty/util/internal/AppendableCharSequence;->chars:[C

    iget v2, p0, Lio/netty/util/internal/AppendableCharSequence;->pos:I

    const/4 v3, 0x0

    invoke-direct {v0, v1, v3, v2}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
