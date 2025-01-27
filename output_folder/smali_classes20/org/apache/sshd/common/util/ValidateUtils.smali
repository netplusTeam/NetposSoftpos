.class public final Lorg/apache/sshd/common/util/ValidateUtils;
.super Ljava/lang/Object;
.source "ValidateUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static checkInstanceOf(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "v"    # Ljava/lang/Object;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 139
    .local p1, "expected":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    sget-object v0, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-static {p0, p1, p2, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkInstanceOf(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static checkInstanceOf(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;J)Ljava/lang/Object;
    .locals 2
    .param p0, "v"    # Ljava/lang/Object;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "J)TT;"
        }
    .end annotation

    .line 133
    .local p1, "expected":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p2, p3, p4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 134
    .local v0, "actual":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    invoke-static {v1, p2, p3, p4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 135
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static checkInstanceOf(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "v"    # Ljava/lang/Object;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 143
    .local p1, "expected":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p2, p3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 144
    .local v0, "actual":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    invoke-static {v1, p2, p3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 145
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static varargs checkInstanceOf(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "v"    # Ljava/lang/Object;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 149
    .local p1, "expected":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p0, p2, p3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 150
    .local v0, "actual":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    invoke-static {v1, p2, p3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 151
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 35
    .local p0, "t":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 36
    return-object p0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;J)Ljava/lang/Object;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "J)TT;"
        }
    .end annotation

    .line 45
    .local p0, "t":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1, p2, p3}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 46
    return-object p0
.end method

.method public static checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 40
    .local p0, "t":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 41
    return-object p0
.end method

.method public static varargs checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 50
    .local p0, "t":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 51
    return-object p0
.end method

.method public static varargs checkNotNullAndNotEmpty(Ljava/lang/Iterable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/lang/Iterable<",
            "TT;>;>(TC;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TC;"
        }
    .end annotation

    .line 85
    .local p0, "t":Ljava/lang/Iterable;, "TC;"
    invoke-static {p0, p1, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p0, v0

    check-cast p0, Ljava/lang/Iterable;

    .line 86
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isNotEmpty(Ljava/lang/Iterable;)Z

    move-result v0

    invoke-static {v0, p1, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 87
    return-object p0
.end method

.method public static checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "t"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;

    .line 55
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 56
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 57
    return-object p0
.end method

.method public static checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "t"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 61
    invoke-static {p0, p1, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 62
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 63
    return-object p0
.end method

.method public static varargs checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "t"    # Ljava/lang/String;
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 67
    invoke-static {p0, p1, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 68
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 69
    return-object p0
.end method

.method public static varargs checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "TT;>;>(TC;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TC;"
        }
    .end annotation

    .line 79
    .local p0, "t":Ljava/util/Collection;, "TC;"
    invoke-static {p0, p1, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p0, v0

    check-cast p0, Ljava/util/Collection;

    .line 80
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 81
    return-object p0
.end method

.method public static varargs checkNotNullAndNotEmpty(Ljava/util/Map;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TV;>;>(TM;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TM;"
        }
    .end annotation

    .line 73
    .local p0, "t":Ljava/util/Map;, "TM;"
    invoke-static {p0, p1, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p0, v0

    check-cast p0, Ljava/util/Map;

    .line 74
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Map;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 75
    return-object p0
.end method

.method public static checkNotNullAndNotEmpty([BLjava/lang/String;)[B
    .locals 1
    .param p0, "a"    # [B
    .param p1, "message"    # Ljava/lang/String;

    .line 91
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object p0, v0

    check-cast p0, [B

    .line 92
    invoke-static {p0}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 93
    return-object p0
.end method

.method public static varargs checkNotNullAndNotEmpty([BLjava/lang/String;[Ljava/lang/Object;)[B
    .locals 1
    .param p0, "a"    # [B
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 97
    invoke-static {p0, p1, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p0, v0

    check-cast p0, [B

    .line 98
    invoke-static {p0}, Lorg/apache/sshd/common/util/NumberUtils;->length([B)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 99
    return-object p0
.end method

.method public static checkNotNullAndNotEmpty([CLjava/lang/String;)[C
    .locals 1
    .param p0, "a"    # [C
    .param p1, "message"    # Ljava/lang/String;

    .line 103
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object p0, v0

    check-cast p0, [C

    .line 104
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->length([C)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 105
    return-object p0
.end method

.method public static varargs checkNotNullAndNotEmpty([CLjava/lang/String;[Ljava/lang/Object;)[C
    .locals 1
    .param p0, "a"    # [C
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 109
    invoke-static {p0, p1, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p0, v0

    check-cast p0, [C

    .line 110
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->length([C)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 111
    return-object p0
.end method

.method public static checkNotNullAndNotEmpty([ILjava/lang/String;)[I
    .locals 1
    .param p0, "a"    # [I
    .param p1, "message"    # Ljava/lang/String;

    .line 115
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object p0, v0

    check-cast p0, [I

    .line 116
    invoke-static {p0}, Lorg/apache/sshd/common/util/NumberUtils;->length([I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;)V

    .line 117
    return-object p0
.end method

.method public static varargs checkNotNullAndNotEmpty([ILjava/lang/String;[Ljava/lang/Object;)[I
    .locals 1
    .param p0, "a"    # [I
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 121
    invoke-static {p0, p1, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p0, v0

    check-cast p0, [I

    .line 122
    invoke-static {p0}, Lorg/apache/sshd/common/util/NumberUtils;->length([I)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 123
    return-object p0
.end method

.method public static varargs checkNotNullAndNotEmpty([Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")[TT;"
        }
    .end annotation

    .line 127
    .local p0, "t":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0, p1, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object p0, v0

    check-cast p0, [Ljava/lang/Object;

    .line 128
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->length([Ljava/lang/Object;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0, p1, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 129
    return-object p0
.end method

.method public static checkState(ZLjava/lang/String;)V
    .locals 1
    .param p0, "flag"    # Z
    .param p1, "message"    # Ljava/lang/String;

    .line 183
    if-nez p0, :cond_0

    .line 184
    sget-object v0, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->throwIllegalStateException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 186
    :cond_0
    return-void
.end method

.method public static checkState(ZLjava/lang/String;J)V
    .locals 3
    .param p0, "flag"    # Z
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 189
    if-nez p0, :cond_0

    .line 190
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->throwIllegalStateException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :cond_0
    return-void
.end method

.method public static checkState(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "flag"    # Z
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 195
    if-nez p0, :cond_0

    .line 196
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->throwIllegalStateException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 198
    :cond_0
    return-void
.end method

.method public static varargs checkState(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "flag"    # Z
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 201
    if-nez p0, :cond_0

    .line 202
    invoke-static {p1, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->throwIllegalStateException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    :cond_0
    return-void
.end method

.method public static checkTrue(ZLjava/lang/String;)V
    .locals 1
    .param p0, "flag"    # Z
    .param p1, "message"    # Ljava/lang/String;

    .line 155
    if-nez p0, :cond_0

    .line 156
    sget-object v0, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->throwIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    :cond_0
    return-void
.end method

.method public static checkTrue(ZLjava/lang/String;J)V
    .locals 3
    .param p0, "flag"    # Z
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "value"    # J

    .line 161
    if-nez p0, :cond_0

    .line 162
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->throwIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    :cond_0
    return-void
.end method

.method public static checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .param p0, "flag"    # Z
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .line 167
    if-nez p0, :cond_0

    .line 168
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->throwIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 170
    :cond_0
    return-void
.end method

.method public static varargs checkTrue(ZLjava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p0, "flag"    # Z
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .line 173
    if-nez p0, :cond_0

    .line 174
    invoke-static {p1, p2}, Lorg/apache/sshd/common/util/ValidateUtils;->throwIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :cond_0
    return-void
.end method

.method public static varargs createFormattedException(Ljava/util/function/Function;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 2
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/util/function/Function<",
            "-",
            "Ljava/lang/String;",
            "+TT;>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 212
    .local p0, "constructor":Ljava/util/function/Function;, "Ljava/util/function/Function<-Ljava/lang/String;+TT;>;"
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "message":Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    return-object v1
.end method

.method public static initializeExceptionCause(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;",
            "Ljava/lang/Throwable;",
            ")TT;"
        }
    .end annotation

    .line 217
    .local p0, "err":Ljava/lang/Throwable;, "TT;"
    if-nez p1, :cond_0

    .line 218
    return-object p0

    .line 221
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 222
    return-object p0

    .line 225
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 226
    return-object p0
.end method

.method public static varargs throwIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 179
    new-instance v0, Lorg/apache/sshd/common/util/ValidateUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/ValidateUtils$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->createFormattedException(Ljava/util/function/Function;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/IllegalArgumentException;

    throw v0
.end method

.method public static varargs throwIllegalStateException(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "format"    # Ljava/lang/String;
    .param p1, "args"    # [Ljava/lang/Object;

    .line 207
    new-instance v0, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/sshd/common/channel/ChannelAsyncInputStream$IoReadFutureImpl$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->createFormattedException(Ljava/util/function/Function;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/IllegalStateException;

    throw v0
.end method
