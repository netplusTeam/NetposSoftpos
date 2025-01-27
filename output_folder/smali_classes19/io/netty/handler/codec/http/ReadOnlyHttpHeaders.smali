.class public final Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;
.super Lio/netty/handler/codec/http/HttpHeaders;
.source "ReadOnlyHttpHeaders.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyValueIterator;,
        Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringValueIterator;,
        Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringIterator;,
        Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyIterator;
    }
.end annotation


# instance fields
.field private final nameValuePairs:[Ljava/lang/CharSequence;


# direct methods
.method public varargs constructor <init>(Z[Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "validateHeaders"    # Z
    .param p2, "nameValuePairs"    # [Ljava/lang/CharSequence;

    .line 56
    invoke-direct {p0}, Lio/netty/handler/codec/http/HttpHeaders;-><init>()V

    .line 57
    array-length v0, p2

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_1

    .line 60
    if-eqz p1, :cond_0

    .line 61
    invoke-static {p2}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->validateHeaders([Ljava/lang/CharSequence;)V

    .line 63
    :cond_0
    iput-object p2, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    .line 64
    return-void

    .line 58
    :cond_1
    invoke-static {}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->newInvalidArraySizeException()Ljava/lang/IllegalArgumentException;

    move-result-object v0

    throw v0
.end method

.method static synthetic access$200(Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "x0"    # Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;

    .line 46
    iget-object v0, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method private get0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 5
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 77
    invoke-static {p1}, Lio/netty/util/AsciiString;->hashCode(Ljava/lang/CharSequence;)I

    move-result v0

    .line 78
    .local v0, "nameHash":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 79
    aget-object v2, v2, v1

    .line 80
    .local v2, "roName":Ljava/lang/CharSequence;
    invoke-static {v2}, Lio/netty/util/AsciiString;->hashCode(Ljava/lang/CharSequence;)I

    move-result v3

    if-ne v3, v0, :cond_0

    invoke-static {v2, p1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 81
    iget-object v3, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    add-int/lit8 v4, v1, 0x1

    aget-object v3, v3, v4

    return-object v3

    .line 78
    .end local v2    # "roName":Ljava/lang/CharSequence;
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 84
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private static newInvalidArraySizeException()Ljava/lang/IllegalArgumentException;
    .locals 2

    .line 67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "nameValuePairs must be arrays of [name, value] pairs"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method private static varargs validateHeaders([Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "keyValuePairs"    # [Ljava/lang/CharSequence;

    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    .line 72
    sget-object v1, Lio/netty/handler/codec/http/DefaultHttpHeaders;->HttpNameValidator:Lio/netty/handler/codec/DefaultHeaders$NameValidator;

    aget-object v2, p0, v0

    invoke-interface {v1, v2}, Lio/netty/handler/codec/DefaultHeaders$NameValidator;->validateName(Ljava/lang/Object;)V

    .line 71
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 74
    .end local v0    # "i":I
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation

    .line 237
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public add(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 232
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # I

    .line 242
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addShort(Ljava/lang/CharSequence;S)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # S

    .line 247
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()Lio/netty/handler/codec/http/HttpHeaders;
    .locals 2

    .line 277
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public contains(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 160
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->get0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public contains(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "ignoreCase"    # Z

    .line 165
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->containsValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Z
    .locals 4
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # Ljava/lang/CharSequence;
    .param p3, "ignoreCase"    # Z

    .line 170
    const/4 v0, 0x1

    if-eqz p3, :cond_2

    .line 171
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 172
    aget-object v2, v2, v1

    invoke-static {v2, p1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    .line 173
    invoke-static {v2, p2}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    return v0

    .line 171
    :cond_0
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .end local v1    # "i":I
    :cond_1
    goto :goto_2

    .line 178
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    array-length v3, v2

    if-ge v1, v3, :cond_4

    .line 179
    aget-object v2, v2, v1

    invoke-static {v2, p1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    add-int/lit8 v3, v1, 0x1

    aget-object v2, v2, v3

    .line 180
    invoke-static {v2, p2}, Lio/netty/util/AsciiString;->contentEquals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 181
    return v0

    .line 178
    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .line 185
    .end local v1    # "i":I
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public entries()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 150
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 151
    .local v0, "entries":Ljava/util/List;, "Ljava/util/List<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 152
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    iget-object v3, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    aget-object v3, v3, v1

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    add-int/lit8 v5, v1, 0x1

    aget-object v4, v4, v5

    .line 153
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 152
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 155
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public get(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->get0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 90
    .local v0, "value":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getAll(Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 131
    invoke-virtual {p0}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 134
    :cond_0
    invoke-static {p1}, Lio/netty/util/AsciiString;->hashCode(Ljava/lang/CharSequence;)I

    move-result v0

    .line 135
    .local v0, "nameHash":I
    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 136
    .local v1, "values":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 137
    aget-object v3, v3, v2

    .line 138
    .local v3, "roName":Ljava/lang/CharSequence;
    invoke-static {v3}, Lio/netty/util/AsciiString;->hashCode(Ljava/lang/CharSequence;)I

    move-result v4

    if-ne v4, v0, :cond_1

    invoke-static {v3, p1}, Lio/netty/util/AsciiString;->contentEqualsIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 139
    iget-object v4, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    add-int/lit8 v5, v2, 0x1

    aget-object v4, v4, v5

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    .end local v3    # "roName":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 142
    .end local v2    # "i":I
    :cond_2
    return-object v1
.end method

.method public getInt(Ljava/lang/CharSequence;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # I

    .line 101
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->get0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 102
    .local v0, "value":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    sget-object v1, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    invoke-virtual {v1, v0}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToInt(Ljava/lang/CharSequence;)I

    move-result v1

    :goto_0
    return v1
.end method

.method public getInt(Ljava/lang/CharSequence;)Ljava/lang/Integer;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 95
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->get0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 96
    .local v0, "value":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    invoke-virtual {v1, v0}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToInt(Ljava/lang/CharSequence;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getShort(Ljava/lang/CharSequence;)Ljava/lang/Short;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 107
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->get0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 108
    .local v0, "value":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    invoke-virtual {v1, v0}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToShort(Ljava/lang/CharSequence;)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public getShort(Ljava/lang/CharSequence;S)S
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # S

    .line 113
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->get0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 114
    .local v0, "value":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    move v1, p2

    goto :goto_0

    :cond_0
    sget-object v1, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    invoke-virtual {v1, v0}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToShort(Ljava/lang/CharSequence;)S

    move-result v1

    :goto_0
    return v1
.end method

.method public getTimeMillis(Ljava/lang/CharSequence;J)J
    .locals 3
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "defaultValue"    # J

    .line 125
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->get0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 126
    .local v0, "value":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    move-wide v1, p2

    goto :goto_0

    :cond_0
    sget-object v1, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    invoke-virtual {v1, v0}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToTimeMillis(Ljava/lang/CharSequence;)J

    move-result-wide v1

    :goto_0
    return-wide v1
.end method

.method public getTimeMillis(Ljava/lang/CharSequence;)Ljava/lang/Long;
    .locals 3
    .param p1, "name"    # Ljava/lang/CharSequence;

    .line 119
    invoke-direct {p0, p1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->get0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 120
    .local v0, "value":Ljava/lang/CharSequence;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lio/netty/handler/codec/CharSequenceValueConverter;->INSTANCE:Lio/netty/handler/codec/CharSequenceValueConverter;

    invoke-virtual {v1, v0}, Lio/netty/handler/codec/CharSequenceValueConverter;->convertToTimeMillis(Ljava/lang/CharSequence;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public isEmpty()Z
    .locals 1

    .line 210
    iget-object v0, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 200
    new-instance v0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringIterator;-><init>(Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$1;)V

    return-object v0
.end method

.method public iteratorCharSequence()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;>;"
        }
    .end annotation

    .line 205
    new-instance v0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyIterator;-><init>(Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$1;)V

    return-object v0
.end method

.method public names()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 220
    invoke-virtual {p0}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 223
    :cond_0
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-virtual {p0}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 224
    .local v0, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 225
    aget-object v2, v2, v1

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 224
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 227
    .end local v1    # "i":I
    :cond_1
    return-object v0
.end method

.method public remove(Ljava/lang/String;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 272
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Iterable;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Iterable<",
            "*>;)",
            "Lio/netty/handler/codec/http/HttpHeaders;"
        }
    .end annotation

    .line 257
    .local p2, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .line 252
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setInt(Ljava/lang/CharSequence;I)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # I

    .line 262
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setShort(Ljava/lang/CharSequence;S)Lio/netty/handler/codec/http/HttpHeaders;
    .locals 2
    .param p1, "name"    # Ljava/lang/CharSequence;
    .param p2, "value"    # S

    .line 267
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "read only"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 215
    iget-object v0, p0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;->nameValuePairs:[Ljava/lang/CharSequence;

    array-length v0, v0

    ushr-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public valueCharSequenceIterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation

    .line 195
    new-instance v0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyValueIterator;

    invoke-direct {v0, p0, p1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyValueIterator;-><init>(Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method public valueStringIterator(Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 1
    .param p1, "name"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 190
    new-instance v0, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringValueIterator;

    invoke-direct {v0, p0, p1}, Lio/netty/handler/codec/http/ReadOnlyHttpHeaders$ReadOnlyStringValueIterator;-><init>(Lio/netty/handler/codec/http/ReadOnlyHttpHeaders;Ljava/lang/CharSequence;)V

    return-object v0
.end method
